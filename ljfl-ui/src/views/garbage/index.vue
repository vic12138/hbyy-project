<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <el-form-item label="分类名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入垃圾分类名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
        <el-form-item label=" 分类类型" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择垃圾分类类型" clearable size="small">
          <el-option
            v-for="dict in garbageTypeOptions"
            :key="dict.dictValue"
            :label="dict.dictLabel"
            :value="dict.dictValue"
          ></el-option>
        </el-select>
      </el-form-item>
      <!--<el-form-item label="解释" prop="gExplain">-->
        <!--<el-input-->
          <!--v-model="queryParams.gExplain"-->
          <!--placeholder="请输入解释"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <!--<el-form-item label="包含物品" prop="contain">-->
        <!--<el-input-->
          <!--v-model="queryParams.contain"-->
          <!--placeholder="请输入包含物品"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <!--<el-form-item label="投放提示" prop="tip">-->
        <!--<el-input-->
          <!--v-model="queryParams.tip"-->
          <!--placeholder="请输入投放提示"-->
          <!--clearable-->
          <!--size="small"-->
          <!--@keyup.enter.native="handleQuery"-->
        <!--/>-->
      <!--</el-form-item>-->
      <el-form-item label="字母" prop="letterId">
        <el-select v-model="queryParams.letterId" placeholder="请选择字母" clearable size="small">
          <el-option
            v-for="item in letterOptions"
            :key="item.id"
            :label="item.region"
            :value="item.id"
          ></el-option>
        </el-select>
      </el-form-item>

        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:garbage:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:garbage:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:garbage:remove']"
        >删除</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="warning"-->
<!--          icon="el-icon-download"-->
<!--          size="mini"-->
<!--          @click="handleExport"-->
<!--          v-hasPermi="['system:garbage:export']"-->
<!--        >导出</el-button>-->
<!--      </el-col>-->
    </el-row>

    <el-table v-loading="loading" :data="garbageList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!--<el-table-column label="垃圾分类id" align="center" prop="id" />-->
      <el-table-column label="垃圾分类名称" align="center" prop="name" />
      <el-table-column label="垃圾分类类型" align="center" prop="type" :formatter="garbageTypeFormat"/>
<!--      <el-table-column label="解释" align="center" prop="gExplain" />-->
<!--      <el-table-column label="包含物品" align="center" prop="contain" />-->
<!--      <el-table-column label="投放提示" align="center" prop="tip" />-->
      <el-table-column label="字母" align="center" prop="letterId" :formatter="letterFormat"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:garbage:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:garbage:remove']"
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

    <!-- 添加或修改垃圾分类对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="50%" :close-on-click-modal="false">
      <el-form ref="form" :model="form" :rules="rules" label-width="15%">
        <el-form-item label="垃圾分类名称" prop="name">
          <el-input v-model="form.name" maxlength="20"  show-word-limit placeholder="请输入垃圾分类名称" />
        </el-form-item>
        <el-form-item label="垃圾分类类型">
          <el-select v-model="form.type" placeholder="请选择垃圾分类类型" style="width:100%">
              <el-option
                v-for="dict in garbageTypeOptions"
                :key="dict.dictValue"
                :label="dict.dictLabel"
                :value="dict.dictValue"
              ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="解释" prop="gExplain">
          <el-input type="textarea" v-model="form.gExplain" maxlength="200"  show-word-limit placeholder="请输入解释" />
        </el-form-item>
        <el-form-item label="包含物品" prop="contain">
          <el-input type="textarea" v-model="form.contain" maxlength="200"  show-word-limit placeholder="请输入包含物品" />
        </el-form-item>
        <el-form-item label="投放提示" prop="tip">
          <el-input type="textarea" v-model="form.tip" maxlength="200"  show-word-limit placeholder="请输入投放提示" />
        </el-form-item>
        <el-form-item label="字母" prop="letterId">
          <el-select v-model="form.letterId" placeholder="请选择字母"  style="width:100%">
          <el-option
            v-for="item in letterOptions"
            :key="item.id"
            :label="item.region"
            :value="item.id"
          ></el-option>
          </el-select>
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
import { listGarbage, getGarbage, delGarbage, addGarbage, updateGarbage, exportGarbage } from "@/api/garbage/garbage";
import { getLetterList } from "@/api/letter/letter";

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
      // 垃圾分类表格数据
      garbageList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: undefined,
        type: undefined,
        gExplain: undefined,
        contain: undefined,
        tip: undefined,
        letterId: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      },
      // 垃圾分类字典
      garbageTypeOptions:[],
      // 字母字典
      letterOptions:[],
    };
  },
  created() {
    this.getList();
    // 垃圾分类字典
    this.getDicts("garbage_type").then(response => {
      this.garbageTypeOptions = response.data;
    });
    // 字母字典表
    getLetterList().then(res =>{
      this.letterOptions = res.data;
    })
  },
  methods: {
    /** 查询垃圾分类列表 */
    getList() {
      this.loading = true;
      listGarbage(this.queryParams).then(response => {
        this.garbageList = response.rows;
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
        name: undefined,
        type: undefined,
        gExplain: undefined,
        contain: undefined,
        tip: undefined,
        letterId: undefined
      };
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
      this.title = "添加垃圾分类";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getGarbage(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改垃圾分类";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != undefined) {
            updateGarbage(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          } else {
            addGarbage(this.form).then(response => {
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
      this.$confirm('是否确认删除垃圾分类?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delGarbage(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        }).catch(function() {});
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有垃圾分类数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportGarbage(queryParams);
        }).then(response => {
          this.download(response.msg);
        }).catch(function() {});
    },
    // 垃圾分类字典翻译
    garbageTypeFormat(row, column) {
      return this.selectDictLabel(this.garbageTypeOptions, row.type);
    },
    // 字母字典翻译
    letterFormat(row, column){
      var actions = [];
      Object.keys(this.letterOptions).map((key) => {
        if (this.letterOptions[key].id == ('' + row.letterId)) {
          actions.push(this.letterOptions[key].region);
          return false;
        }
      });
      return actions.join('');
    }
  }
};
</script>
