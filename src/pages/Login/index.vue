<template>
    <div class="login">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span>登录|注册</span>
            </div>
            <div>
                <el-form ref="form" :model="form" label-width="80px">
                    <el-form-item label="用户名">
                        <el-input v-model="form.username"></el-input>
                    </el-form-item>
                    <el-form-item label="密码">
                        <el-input type="password" v-model="form.password"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="loginHandle">立即登录</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </el-card>
    </div>
</template>
<script>
import {mapMutations} from "vuex"

export default {
    name:"Login",
    data(){
        return{
            form:{}
        }
    },
    methods:{
        ...mapMutations("LoginModule",["setToken","setUser"]),
        loginHandle(){
            if(this.form.username && this.form.password){
                this.$api.getLogin({
                    username:this.form.username,
                    password:this.form.password
                }).then(res=>{
                    console.log(res.data);
                    this.setToken(res.data.token);  //存储到token中
                    this.setUser(res.data.data[0].username);
                    localStorage.setItem("token",res.data.token); //存储到本地
                    localStorage.setItem("user",res.data.data[0].username);
                    this.$router.replace("/product");  //登录成功之后跳转到首页
                })
            }
        }
    }
}
</script>
<style scoped>
.login {
    width: 100%;
}
.box-card {
    width: 600px;
    margin: 0 auto;
    margin-top: 100px;
}
.clearfix:before,
.clearfix:after {
    display: table;
    content: "";
}
.clearfix:after {
    clear: both;
}
</style>