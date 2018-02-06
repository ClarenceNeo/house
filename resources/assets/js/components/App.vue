<template>
  <div>
    <!-- <top-menu></top-menu> -->
    <top-nav></top-nav>
    <notification></notification>
    <transition name="fade" mode="out-in">
      <router-view></router-view>
    </transition>
    <el-footer></el-footer>
  </div>
</template>

<script>
  // import TopMenu from './common/TopMenu'
  import Notification from './common/Notification'
  import jwtToken from './../helpers/jwt'
  import TopNav from './common/TopNav'
  import ElFooter from './common/ElFooter'
  export default {
    created(){
      if (jwtToken.getToken()) {
        this.$store.dispatch('setAuthUser')
      }
    },
    components: {
      // TopMenu,
      Notification,
      TopNav,
      ElFooter
    },
    mounted(){
    }
  }
</script>
