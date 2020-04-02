/**
 * 网络请求：Axios
 */

import axios from "axios"
import qs from "query-string"
import router from "../router"
// import store from "../store"

const toLogin = () =>{
    router.push("/login")
}

// 错误信息的响应方法
const errorHandle = (status,other) => {
    switch(status){
        case 400:
            // 请求头和服务器的限制
            console.log(" 服务器不理解请求的语法");
            toLogin();
            break;
        case 401:
            // token验证失败，用户身份验证失败
            console.log("（未授权） 请求要求身份验证");
            toLogin();
            break;
        case 403:
            // 用户身份过期了，服务器请求限制
            console.log("（禁止） 服务器拒绝请求");
            toLogin();
            break;
        case 404:
            // 网络请求地址错误
            console.log("（未找到） 服务器找不到请求的网页。");
            break;
        default:
            console.log(other);
            break;
            
    }
}

// 创建axios对象
const instance = axios.create({
    timeout:5000  // 请求超时
})

// 全局配置
instance.defaults.baseUrl = "http://iwenwiki.com";
// instance.defaults.headers.common['Authorization'] = AUTH_TOKEN;
instance.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

// 创建请求拦截和响应拦截操作
instance.interceptors.request.use(config =>{
        // 配置
        if(config.method === 'post'){
            config.data = qs.stringify(config.data);
        }
        // 判断token是否存在，存在则携带，通过请求头
        // const token = store.state.LoginModule.token;
        // if(token){
        //     config.headers.authorization = token;
        // }
        return config;
    },
    error => Promise.reject(error)
)

// review自己的代码，也要不断的review的情感世界

instance.interceptors.response.use(
    // 成功 
    /**
     * 成功和失败的判断：
     *  1.请求成功和请求失败
     *  2.请求成功：结果的成功和结果的失败
     * 
     * 真正好的代码：
     *  1.可读性高
     *  2.可维护性强
     * 
     * 不是流水账的代码！！！
     * 面向对象的思维方式：OOP
     */
    response => response.status === 200 ? Promise.resolve(response) : Promise.reject(response),
    // 我们自己封装的，所以为了代码的清晰可读性，我们需要增Promise
    // response => response,
    error => {
        const { response } = error; // ES6的解构赋值
        /**
         * response包含的信息：
         *  status
         *  data
         */
        if(response){
            // 给出开发者具体的错误信息
            errorHandle(response.status,response.data);
            return Promise.reject(response);
        }else{
            console.log("请求中断或者断网了");
        }
    }
)

export default instance;