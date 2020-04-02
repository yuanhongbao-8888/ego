<template>
  <div>
    <el-upload ref="upload" 
    action="http://localhost:3000/api/upload" 
    :on-preview="handlePreview"
    :on-remove="handleRemove"
    :limit="1"
    class="upload-demo"
    :file-list="fileList"
    :auto-upload="false"
    :on-success="uploadHandle">
    
    <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
    <el-button style="margin-left: 10px;" size="small" type="success" @click="submitUpload">上传到服务器</el-button>
    <div slat="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
    </el-upload>
  </div>
</template>
<script>
export default {
  name: "Upload",
  data() {
    return {
        fileList:[]
    }
  },
  methods: {
    handlePreview(file) {

    },
    handleRemove(file,fileList){

    },
    uploadHandle(response,file,fileList){
        this.$emit("onUpload",response)
    },
    submitUpload(){
        this.$refs.upload.submit();
    }
  }
};
</script>