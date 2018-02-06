<template>
    <div class="">
        <div class="home-title wrap">
            <h1>
                <span class="main-title">Rapyuta</span>
                <div>为你寻觅一个新家</div>
            </h1>
        </div>
        <search class="wrap"></search>
        <div class="wrap">
            <el-row :gutter="20" class="house-container">
                <h3 class="house-card-title">精选楼盘</h3>
                <el-col v-for="row in houses" :key="row.id" :xs="12" :sm="8" :md="8" :lg="8" :xl="8">
                    <div class="grid-content bg-purple">
                        <router-link :to="{ name: 'house', params: { id: row.id }}">
                            <house-card v-bind:item="row"></house-card>
                        </router-link>
                    </div>
                </el-col>
            </el-row>
        </div> 
        <div class="house-more-btn wrap">
            <el-button round>查看更多</el-button>
            <!-- <el-button>查看更多</el-button> -->
        </div>
        <div class="hot-house wrap">
            <h3 class="house-card-title">热门推荐</h3>
            <carousel></carousel>
        </div>
    </div>
</template>

<script>
    import HouseCard from './HouseCard'
    import Search from './Search'
    import Carousel from './Carousel'
    export default {
        mounted() {
            // console.log(this.$store)
            axios.get('/api/house/read').then(r => {
              this.houses = r.data;
              console.log(r.data);
            })
        },
        data(){
          return {
            houses: []
          }
        },
        components: {
            HouseCard,
            Search,
            Carousel
        }
    }
</script>

<style>
  .wrap {
      max-width: 1024px;
      margin: 0 auto;
  }
  .el-col {
    border-radius: 4px;
    margin-bottom: 15px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }

  .home-title {
      margin-top: 25px;
  }
  .home-title h1 {
      font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif;
      font-size: 48px;
      letter-spacing: -0.8px;
      padding-top: 8px;
      padding-bottom: 8px;
      font-weight: 300;
  }

  .home-title .main-title {
      color:#FC5B62;
      margin-bottom: 5px;
      display: inline-block;
      font-weight: 500;
  }

  .house-card-title {
      text-align: center;
      margin: 0;
      font-weight: 400;
      margin-bottom: 20px;
      margin-top: 10px;
  }

  .house-more-btn {
      text-align: center;
      margin-bottom: 20px;
  }

  .house-container {
      height: 980px;
  }

  .house-more-btn button {
      width: 320px;
  }

  .hot-house {
      margin-top: 35px;
  }
</style>
