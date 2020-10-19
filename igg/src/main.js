import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Mint from 'mint-ui';
import 'mint-ui/lib/style.min.css';
import MyHeader from './components/Header.vue'
import MyFooter from './components/Footer.vue'
import axios from 'axios'

axios.defaults.baseURL = 'http://127.0.0.1:5050'
Vue.prototype.axios = axios

Vue.use(Mint);

Vue.config.productionTip = false

Vue.component('MyHeader', MyHeader)
Vue.component('MyFooter', MyFooter)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
