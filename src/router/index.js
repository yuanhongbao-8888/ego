import Vue from 'vue'
import VueRouter from 'vue-router'
import Layout from '../pages/Layout.vue'
import Login from '../pages/Login'
import Product from '../pages/Product'
import Params from '../pages/Params'
import Content from '../pages/Content'
import store from '../store'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Layout',
    redirect:{name:"Product"},
    component: Layout,
    children:[
      {
        path:"product",
        name:"Product",
        component:Product,
        meta:{
          isLogin:true
        }
      },
      {
        path:"params",
        name:"Params",
        component:Params,
        meta:{
          isLogin:true
        }
      },
      {
        path:"content",
        name:"Content",
        component:Content,
        meta:{
          isLogin:true
        }
      }
    ]
  },
  {
    path:"/login",
    name:"Login",
    component:Login
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to,from,next) =>{
  if(to.meta.isLogin){
    //是否登录
    var token = store.state.LoginModule.token;
    if(token){
      next();
    }else{
      next({
        path:"/login"
      })
    }
  }else{
    next();
  }
})

export default router
