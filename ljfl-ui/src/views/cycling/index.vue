<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <el-form-item label="回收站名称" prop="cyclingName">
        <el-input
          v-model="queryParams.cyclingName"
          placeholder="请输入回收站名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="回收站联系方式" prop="cyclingMobile">
        <el-input
          v-model="queryParams.cyclingMobile"
          placeholder="请输入回收站联系方式"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="回收站负责人" prop="cyclingMan">
        <el-input
          v-model="queryParams.cyclingMan"
          placeholder="请输入回收站负责人"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <!--<el-form-item label="回收站介绍" prop="cyclingIntroduce">-->
        <!--<el-input-->
          <!--v-model="queryParams.cyclingIntroduce"-->
          <!--placeholder="请输入回收站介绍"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <!--<el-form-item label="回收站详情" prop="cyclingDetail">-->
        <!--<el-input-->
          <!--v-model="queryParams.cyclingDetail"-->
          <!--placeholder="请输入回收站详情"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <!--<el-form-item label="回收站具体地址" prop="cyclingAddress">-->
        <!--<el-input-->
          <!--v-model="queryParams.cyclingAddress"-->
          <!--placeholder="请输入回收站具体地址"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:cycling:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:cycling:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:cycling:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:cycling:export']"
        >导出</el-button>
      </el-col>
    </el-row>

    <el-table v-loading="loading" :data="cyclingList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!--<el-table-column label="回收站id" align="center" prop="id" />-->
      <el-table-column label="回收站名称" align="center" prop="cyclingName" />
      <el-table-column label="回收站联系方式" align="center" prop="cyclingMobile" />
      <el-table-column label="回收站负责人" align="center" prop="cyclingMan" />
      <el-table-column label="回收站介绍" align="center" prop="cyclingIntroduce" />
      <el-table-column label="回收站详情" align="center" prop="cyclingDetail" />
      <el-table-column label="回收站具体地址" align="center" prop="cyclingAddress"/>
      <!--<el-table-column label="备注" align="center" prop="remark" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:cycling:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:cycling:remove']"
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

    <!-- 添加或修改回收站管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="50%">
      <el-form ref="form" :model="form" :rules="rules" label-width="15%">
        <el-form-item label="回收站名称" prop="cyclingName">
          <el-input v-model="form.cyclingName" placeholder="请输入回收站名称" />
        </el-form-item>
        <el-form-item label="回收站联系方式" prop="cyclingMobile">
          <el-input v-model="form.cyclingMobile" placeholder="请输入回收站联系方式" />
        </el-form-item>
        <el-form-item label="回收站负责人" prop="cyclingMan">
          <el-input v-model="form.cyclingMan" placeholder="请输入回收站负责人" />
        </el-form-item>
        <el-form-item label="回收站图片" prop="cyclingImg">
          <!--<el-input v-model="form.infoImg" placeholder="请输入资讯图片" />-->
          <!--action="https://jsonplaceholder.typicode.com/posts/"-->
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
        <el-form-item label="回收站介绍" prop="cyclingIntroduce">
          <el-input type="textarea" v-model="form.cyclingIntroduce" placeholder="请输入回收站介绍" />
        </el-form-item>
        <el-form-item label="回收站详情" prop="cyclingDetail">
          <el-input type="textarea" v-model="form.cyclingDetail" placeholder="请输入回收站详情" />
        </el-form-item>
        <el-form-item label="回收站具体地址" prop="cyclingAddress">
          <!--<el-input v-model="form.cyclingAddress" placeholder="请输入回收站具体地址" />-->
          <el-button @click="chooseMap" style="width: 100%">{{address}}</el-button>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>


    <el-dialog id="chooseMap" title="选择坐标" fullscreen :visible.sync="dialogVisible">
      <el-row>
        <div class="amap-page-container">
          <el-amap-search-box class="search-box"
                              :on-search-result="onSearchResult"
                              ></el-amap-search-box>
          <el-amap :vid="'amap'"
                   :zoom="zoom"
                   :events="events">
            <el-amap-text class="amap-container"  :text="marker.content" :offset="marker.offset" :position="marker.position" :events="marker.events"></el-amap-text>
            <el-amap-marker :position="marker.position"
                            :events="marker.events"
                            :visible="marker.visible"
                            :draggable="marker.draggable"
            >
            </el-amap-marker>
          </el-amap>
        </div>
      </el-row>
      <span slot="footer"
            class="dialog-footer">
      <el-button @click="dialogVisible = false">取 消</el-button>
      <el-button type="primary"
                 @click="submit">确 定</el-button>
    </span>
    </el-dialog>

  </div>
</template>

<script>
import { listCycling, getCycling, delCycling, addCycling, updateCycling, exportCycling } from "@/api/cycling/cycling";
import ElButton from "element-ui/packages/button/src/button";
import { getToken } from "@/utils/auth";

export default {
  components: {ElButton},
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
      // 回收站管理表格数据
      cyclingList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cyclingName: undefined,
        cyclingMobile: undefined,
        cyclingMan: undefined,
        cyclingIntroduce: undefined,
        cyclingDetail: undefined,
        cyclingAddress: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        cyclingName: [
          { required: true, message: "回收站名称不能为空", trigger: "blur" }
        ],        cyclingMobile: [
          { required: true, message: "回收站联系方式不能为空", trigger: "blur" },
          { pattern:/^1[3456789]\d{9}$/,message:'请输入正确的手机号码',trigger:'blur'},
        ],         cyclingImg: [
          { required: true, message: "回收站图片不能为空", trigger: "blur" }
        ],       cyclingMan: [
          { required: true, message: "回收站负责人不能为空", trigger: "blur" }
        ],        cyclingAddress: [
          { required: true, message: "回收站具体地址不能为空", trigger: "blur" }
        ],      },
      imageUrl:'',
      upload:{
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传回收站图片的地址
        url: process.env.VUE_APP_BASE_API + "/cycling/uploadCyclingImg",
      },
      prefix:process.env.VUE_APP_BASE_API,
      address:'请输入回收站具体地址',
      contentAddress:"",
      zoom: 14,
      // center: [113.112414, 23.019643],
      x:113.112414,
      y:23.019643,
      marker: {
        position: [],
        offset: [0, -50],
        content:"",
        visible: true,
        draggable: false,
      },
      events: {
        click: (e) => {
          this.marker.position = [e.lnglat.lng, e.lnglat.lat]
          this.x = e.lnglat.lng;
          this.y = e.lnglat.lat;
          var that = this;
          // 这里通过高德 SDK 完成。
            var geocoder = new AMap.Geocoder({
              radius: 1000,
              extensions: "all"
            });
            geocoder.getAddress([e.lnglat.lng ,e.lnglat.lat], function(status, result) {
              if (status === 'complete' && result.info === 'OK') {
                if (result && result.regeocode) {
                  that.contentAddress = result.regeocode.formattedAddress;
                  that.marker.content = that.contentAddress;
                  that.$nextTick();
                }
              }
            });
        }
      },
      dialogVisible: false,
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询回收站管理列表 */
    getList() {
      this.loading = true;
      listCycling(this.queryParams).then(response => {
        this.cyclingList = response.rows;
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
        cyclingName: undefined,
        cyclingMobile: undefined,
        cyclingMan: undefined,
        cyclingIntroduce: undefined,
        cyclingDetail: undefined,
        cyclingAddress: undefined,
        createBy: undefined,
        createTime: undefined,
        updateBy: undefined,
        updateTime: undefined,
        remark: undefined,
        cyclingImg: undefined
      };
      this.imageUrl = '',
      this.address = '请输入回收站具体地址',
      this.x = 116.602489,
      this.y = 40.080734,
      this.marker={
        position: [],
          offset: [0, -50],
          content:"",
          visible: true,
          draggable: false,
      },
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
      this.title = "添加回收站管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getCycling(id).then(response => {
        this.form = response.data;
        this.imageUrl = this.prefix + this.form.cyclingImg,
        this.address = this.form.cyclingAddress,
        this.x = this.form.addressX,
        this.y = this.form.addressY,
        this.open = true;
        this.title = "修改回收站管理";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.form.addressX = this.x;
      this.form.addressY = this.y;
      this.form.cyclingAddress = this.address;

      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != undefined) {
            updateCycling(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          } else {
            addCycling(this.form).then(response => {
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
      this.$confirm('是否确认删除回收站"' + row.cyclingName + '"的数据?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delCycling(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(function() {});
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有回收站管理数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportCycling(queryParams);
        }).then(response => {
          this.download(response.msg);
        }).catch(function() {});
    },
    // 图片上传
    handleAvatarSuccess(res, file) {
      this.imageUrl = URL.createObjectURL(file.raw);
      this.form.cyclingImg = res.imageUrl;
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === 'image/jpeg';
      const isLt2M = file.size / 1024 / 1024 < 2;
      console.log("上传图片信息",file)
      if (!isJPG) {
        this.$message.error('上传图片只能是 JPG 格式!');
      }
      if (!isLt2M) {
        this.$message.error('上传图片大小不能超过 2MB!');
      }
      return isJPG && isLt2M;
    },
    // 点击地图
    chooseMap(){
      this.openMap(this.x,this.y);
    },
    // 地图选择器
    openMap(lng, lat) {
      if (lng && lat) {
        this.center = [lng, lat]
        this.marker.position = [lng, lat]
      }
      this.dialogVisible = true
    },
    onSearchResult(pois) {
      let latSum = 0;
      let lngSum = 0;
      console.log("------------",pois);
      pois.forEach(poi => {
        lngSum += poi.lng;
        latSum += poi.lat;
      });
      let center = {
        lng: lngSum / pois.length,
        lat: latSum / pois.length
      };
      this.center = [center.lng, center.lat];
    },
    submit() {
      this.address = this.contentAddress;
      this.$emit('callback', this.marker.position);
      this.dialogVisible = false
    }
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
  .amap-page-container {
    margin-top: -50px;
    width: 100%;
    height: 550px;
  }

  .search-box {
    margin-top: 0px;
    position: relative;
    top: 65px;
    left: 20px;
  }
  #chooseMap .el-dialog {
     margin-top: 0vh !important;
  }
  #chooseMap .el-dialog__footer {
    padding-top: 5% !important;
  }
</style>
