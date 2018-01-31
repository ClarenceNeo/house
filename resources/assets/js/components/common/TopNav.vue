<template>
  <div>
    <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
    <el-menu-item index="1">发布房源</el-menu-item>
    <el-menu-item index="2"><a href="https://www.ele.me" target="_blank">登录</a></el-menu-item>
    <el-submenu index="3">
      <template slot="title">用户</template>
      <el-menu-item index="2-1">选项1</el-menu-item>
      <el-menu-item index="2-2">选项2</el-menu-item>
      <el-menu-item index="2-3">选项3</el-menu-item>
    </el-submenu>
    </el-menu>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        // activeIndex: '1',
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style>
  .el-menu--horizontal .el-menu-item {
    float: right;
  }
</style>

