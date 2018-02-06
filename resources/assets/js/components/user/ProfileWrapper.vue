<template>
  <el-row class="tac">
    <el-col :span="4">
      <el-menu
        default-active="1"
        class="el-menu-vertical-demo">
        <el-menu-item index="1">
          <router-link tag="div" :to="{name: 'profile'}">
            <i class="el-icon-menu"></i>
            <span>个人资料</span>
          </router-link>
        </el-menu-item>
        <el-menu-item index="2">
          <router-link tag="div" :to="{name: 'profile.editProfile'}">
            <i class="el-icon-menu"></i>
            <span>修改资料</span>
          </router-link>
        </el-menu-item>
        <el-menu-item index="3">
          <router-link tag="div" :to="{name: 'profile.editPassword'}">
            <i class="el-icon-menu"></i>
            <span>修改密码</span>
          </router-link>
        </el-menu-item>
      </el-menu>
    </el-col>
    <el-col :span="20">
      <transition name="fade" mode="out-in">
        <router-view></router-view>
      </transition>
    </el-col>
  </el-row>
</template>

<script>
  export default {
    methods: {
    }
  }
</script>

<style>
 .el-menu.el-menu-vertical-demo {
   padding: 0 10px;
 }
</style>
