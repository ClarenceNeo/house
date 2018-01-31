<template>
  <div>
    <el-card :body-style="{ padding: '0px' }">
        <img :src="item.cover" class="image">
        <div style="padding: 14px;">
          <span>{{item.title}}</span>
          <div class="bottom clearfix">
            <time class="time">{{ item.updated_at }}</time>
            <!-- <el-button type="text" class="button">查看详情</el-button> -->
          </div>
        </div>
    </el-card>
  </div>
</template>

<script>
export default {
  props: ["item"],
  data() {
    return {
    };
  }
}
</script>

<style>
  .time {
    font-size: 13px;
    color: #999;
  }
  
  .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

  .button {
    padding: 0;
    float: right;
  }

  .image {
    width: 100%;
    display: block;
  }

  .clearfix:before,
  .clearfix:after {
      display: table;
      content: "";
  }
  
  .clearfix:after {
      clear: both
  }
</style>