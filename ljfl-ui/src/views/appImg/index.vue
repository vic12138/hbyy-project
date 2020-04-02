<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <!--<el-form-item label="图片路径" prop="imgPath">-->
        <!--<el-input-->
          <!--v-model="queryParams.imgPath"-->
          <!--placeholder="请输入图片路径"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <!--<el-form-item>-->
        <!--<el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>-->
        <!--<el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>-->
      <!--</el-form-item>-->
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:img:add']"
        >新增</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="success"-->
<!--          icon="el-icon-edit"-->
<!--          size="mini"-->
<!--          :disabled="single"-->
<!--          @click="handleUpdate"-->
<!--          v-hasPermi="['system:img:edit']"-->
<!--        >修改</el-button>-->
<!--      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:img:remove']"
        >删除</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="warning"-->
<!--          icon="el-icon-download"-->
<!--          size="mini"-->
<!--          @click="handleExport"-->
<!--          v-hasPermi="['system:img:export']"-->
<!--        >导出</el-button>-->
<!--      </el-col>-->
    </el-row>

    <el-table v-loading="loading" :data="imgList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!--<el-table-column label="图片路径" align="center" prop="imgPath" />-->
      <!--<el-table-column label="图片标记" align="center" prop="imgTab" />-->
      <el-table-column label="图片" align="center" >
        <template slot-scope="scope">
          <el-image
            style="width: 100px; height: 100px"
            :src="prefix+scope.row.imgPath"
            :previewSrcList="[prefix+scope.row.imgPath]"
            ></el-image>
        </template>
      </el-table-column>
      <el-table-column label="开启状态" align="center">
        <template slot-scope="scope">
          <el-switch
            v-model="scope.row.openFlag"
            active-value="0"
            inactive-value="1"
            @change="handleStatusChange(scope.row)"
          ></el-switch>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!--<el-button-->
            <!--size="mini"-->
            <!--type="text"-->
            <!--icon="el-icon-edit"-->
            <!--@click="handleUpdate(scope.row)"-->
            <!--v-hasPermi="['system:img:edit']"-->
          <!--&gt;修改</el-button>-->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:img:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改图片轮播图对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="50%" :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="15%">
        <el-form-item label="图片：" prop="imgPath">
          <el-upload
            class="avatar-uploader"
            :headers = upload.headers
            :action = upload.url
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            :before-upload="beforeAvatarUpload">
            <img v-if="imageUrl" :src="imageUrl" class="avatar">
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
        </el-form-item>
        <el-form-item label="是否开启轮播：" prop="openFlag">
          <!--<el-input v-model="form.delFlag" placeholder="请输入删除标志" />-->
          <el-switch
            v-model="form.openFlag"
            active-value="0"
            inactive-value="1"
          ></el-switch>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listImg, getImg, delImg, addImg, updateImg, exportImg,changeImgStatus } from "@/api/appImg/img";
import { getToken } from "@/utils/auth";

export default {
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 总条数
      total: 0,
      // 图片轮播图表格数据
      imgList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        imgPath: undefined,
        imgTab: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        imgPath: [
          { required: true, message: "图片不能为空", trigger: "blur" }
        ],        imgTab: [
          { required: true, message: "图片标记（0-首页，1-资讯页）不能为空", trigger: "blur" }
        ],        delFlag: [
          { required: true, message: "删除标志（0代表存在 1代表删除）不能为空", trigger: "blur" }
        ],     infoImg:[
          { required: true, message: "图片不能为空", trigger: "blur" }
        ],},
      imageUrl:'',
      upload:{
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传资讯图片的地址
        url: process.env.VUE_APP_BASE_API + "/information/uploadInfoImg",
      },
      prefix:process.env.VUE_APP_BASE_API,
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询图片轮播图列表 */
    getList() {
      this.loading = true;
      this.queryParams.imgTab="0";
      listImg(this.queryParams).then(response => {
        this.imgList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        imgPath: undefined,
        imgTab: undefined,
        delFlag: undefined,
        createTime: undefined,
        updateBy: undefined,
        updateTime: undefined,
        remark: undefined
      };
      this.imageUrl=undefined;
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!=1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加图片轮播图";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getImg(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改图片轮播图";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.imgTab="0";
          if (this.form.id != undefined) {
            updateImg(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          } else {
            addImg(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("新增成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$confirm('是否确认删除图片?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delImg(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(function() {});
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有图片轮播图数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportImg(queryParams);
        }).then(response => {
          this.download(response.msg);
        }).catch(function() {});
    },
    // 图片上传
    handleAvatarSuccess(res, file) {
      this.imageUrl = URL.createObjectURL(file.raw);
      this.form.imgPath = res.imageUrl;
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === 'image/jpeg';
      const isLt2M = file.size / 1024 / 1024 < 2;
      // console.log("上传图片信息",file)
      if (!isJPG) {
        this.$message.error('上传图片只能是 JPG 格式!');
      }
      if (!isLt2M) {
        this.$message.error('上传图片大小不能超过 2MB!');
      }
      return isJPG && isLt2M;
    },
    // 图片状态修改
    handleStatusChange(row) {
      let text = row.openFlag === "0" ? "启用" : "停用";
      this.$confirm('确认要' + text + '这张图片吗?', "警告", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(function() {
        return changeImgStatus(row.id, row.openFlag);
      }).then(() => {
        this.msgSuccess(text + "成功");
      }).catch(function() {
        row.openFlag = row.openFlag === "0" ? "1" : "0";
      });
    },
  }
};
</script>
<style>
  .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>
