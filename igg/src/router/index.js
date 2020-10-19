import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Cup from '../views/Cup.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Details from '../views/Details.vue'
import Checkout from '../views/Checkout.vue'
import Nav from '../views/Nav.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Home
  },
  {
    path: '/cup',
    component: Cup
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/details/:id',
    component: Details
  },
  {
    path: '/checkout',
    component: Checkout
  },
  {
    path: '/nav',
    component: Nav
  }

]

const router = new VueRouter({
  routes
})

export default router
