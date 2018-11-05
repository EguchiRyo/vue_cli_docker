import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
import Hoge from '@/components/Hoge'
import Scene2 from '@/components/Scene2'
import Login from '@/components/Login'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      // name: 'Hoge',
      component: Hoge
    },
    {
      path: '/scene2',
      // name: 'Scene2',
      component: Scene2
    },
    {
      path: '/login',
      // name: 'Scene2',
      component: Login
    }
  ]
})
