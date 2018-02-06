<template>
<div>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span>用户名</span>
      <!-- <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button> -->
    </div>
    <div class="text item">
      {{ user.name }}
    </div>
  </el-card>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span>邮箱</span>
      <!-- <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button> -->
    </div>
    <div class="text item">
      {{ user.email }}
    </div>
  </el-card>
</div>
</template>

<style>
  .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 480px;
  }
</style>

<script>
    import {mapState} from 'vuex'
    export default {
      created(){
        this.$store.dispatch('setAuthUser')
      },
      computed: {
        ...mapState({
          user: state => state.AuthUser
        })
      },
    }
</script>
