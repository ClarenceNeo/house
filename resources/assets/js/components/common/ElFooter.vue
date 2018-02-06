<template>
  <div>
    <div class="line"></div>
    <div class="wrap">
      <el-row>
        <el-col :span="8">
          <div class="footer-wrap">
            <span class="footer-title">Rapyuta</span>
            <div class="">
              <div class="footer-item"><a>工作机会</a></div>
              <div class="footer-item"><a>新闻</a></div>
              <div class="footer-item"><a>政策</a></div>
              <div class="footer-item"><a>帮助</a></div>
            </div>
          </div>
        </el-col>
        <el-col :span="8">
          <div class="footer-wrap">
            <span class="footer-title">发现</span>
            <div class="">
              <div class="footer-item"><a>信任与安全</a></div>
              <div class="footer-item"><a>旅行基金</a></div>
              <div class="footer-item"><a>礼品卡</a></div>
              <div class="footer-item"><a>旅游指南</a></div>
            </div>
          </div>
        </el-col>
        <el-col :span="8">
          <div class="footer-wrap">
            <span class="footer-title">租售</span>
            <div class="">
              <div class="footer-item"><a>待客之道</a></div>
              <div class="footer-item"><a>房东义务</a></div>
            </div>
          </div>
        </el-col>
      </el-row>
      <div class="line"></div>
      <span class="copyright">© Clarence.</span>
    </div>
  </div>
</template>

<script>
export default {
  
}
</script>

<style>
  .line {
    border-bottom: 1px solid #eee;
    margin-top: 20px;
    margin-bottom: 15px;
  }
  .footer-wrap {
    /* text-align: center; */
    padding-left: 90px;
  }
  .footer-title {
    display: inline-block;
    font-weight: 600;
    padding: 10px 0;
    font-size: 14px;
  }
  .footer-item a {
    color: #999;
    cursor: pointer;
  }
  .copyright {
    display: inline-block;
    padding: 10px 0;
    margin-left: 10px;
    margin-bottom: 20px;
  }
</style>


