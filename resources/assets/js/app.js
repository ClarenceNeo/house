
require('./bootstrap');

window.Vue = require('vue')

import VueRouter from 'vue-router'
import router from './routes'
import store from './store/index'
import jwtToken from './helpers/jwt'
import App from './components/App'
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'

import zh_CN from './locale/zh_CN'
import VeeValidate, { Validator } from 'vee-validate'

axios.interceptors.request.use(function (config) {
  if (jwtToken.getToken()) {
    config.headers['BSession'] = jwtToken.getToken()
    // config.headers['Content-Type'] = 'multipart/form-data'
  }
  return config
}, function (error) {
  return Promise.reject(error)
})

axios.interceptors.response.use(response => {
  let token = response.headers.bsession;
  if (token) {
    jwtToken.setToken(token)
  }
  return response
}, error => {
  return Promise.resolve(error.response)
})

Validator.localize('zh_CN', zh_CN);

Vue.use(VueRouter)
Vue.use(Element)
Vue.use(VeeValidate, {
  locale: 'zh_CN'
})
Vue.component('app', App)

new Vue({
  el: '#app',
  router,
  store
})
