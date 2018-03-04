<template>
  <el-tabs v-model="activeName" @tab-click="handleClick">
    <el-tab-pane label="详情" name="first">详情</el-tab-pane>
    <el-tab-pane label="位置" name="second">位置</el-tab-pane>
    <el-tab-pane label="须知" name="third">须知</el-tab-pane>
    <el-tab-pane label="联系人" name="fourth">联系人</el-tab-pane>
  </el-tabs>
</template>
<script>
  export default {
    data() {
      return {
        activeName: 'first'
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
  };
</script>