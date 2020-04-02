import Vue from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import './plugins/element.js'
import './assets/css/common.css'
import api from './api'
import VueUeditorWrap from 'vue-ueditor-wrap'

Vue.config.productionTip = false
Vue.prototype.$api = api;
Vue.component('vue-ueditor-wrap',VueUeditorWrap)

if(localStorage.getItem("token") && localStorage.getItem("user")){
  store.commit("LoginModule/setToken",localStorage.getItem("token"));
  store.commit("LoginModule/setUser",localStorage.getItem("user"));
}

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
