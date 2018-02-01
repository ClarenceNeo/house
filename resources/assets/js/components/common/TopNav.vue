<template>
  <div>
    <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
    <el-menu-item class="left" index="5"><router-link to="/"> 首页 </router-link></el-menu-item>
    <el-menu-item class="left" index="6" v-if="user.permission == 'admin'"><router-link to="/admin"> 后台管理 </router-link></el-menu-item>
    <el-submenu v-if="user.authenticated" index="3">
      <template slot="title">{{user.name}}</template>
      <el-menu-item class="sub-item" index="2-1"><router-link to="/profile">个人资料</router-link></el-menu-item>
      <el-menu-item class="sub-item" index="2-2"><a @click.prevent="logout" href="">退出</a></el-menu-item>
    </el-submenu>
    <el-menu-item v-if="!user.authenticated" index="4">
      <router-link to="/login">登录</router-link>
    </el-menu-item>
    <el-menu-item v-if="!user.authenticated" index="2">
      <router-link to="/register">注册</router-link>
    </el-menu-item>
    <el-menu-item v-if="user.authenticated" index="1">
      <router-link to="/house/add">发布房源</router-link>
    </el-menu-item>
    </el-menu>
  </div>
</template>

<script>
  import {mapState} from 'vuex'
  export default {
    computed: {
      ...mapState({
        user: state => state.AuthUser
      })
    },
    data() {
      return {
        activeIndex: '1',
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      logout() {
        this.$store.dispatch('logoutRequest').then(request => {
          this.$router.push({name: 'home'})
        })
      }
    }
  }
</script>

<style>
  .el-menu--horizontal .el-menu-item a{
    display: block;
    padding: 0 20px;
  }
  .el-menu--horizontal .el-menu-item {
    padding: 0;
  }
  .el-menu--horizontal .el-menu-item, .el-menu--horizontal .el-submenu {
    float: right;
  }
  .el-menu--horizontal .el-menu-item.left {
    float: left;
  }
  .el-menu {
    margin-bottom: 20px;
    padding: 0 50px 0 10px;
  }

  .el-submenu .el-menu-item {
    min-width: 0;
  }
</style>

