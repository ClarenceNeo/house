<template>
    <div>
        <el-row :gutter="20">
            <el-col v-for="row in houses" :key="row.id" :xs="12" :sm="8" :md="8" :lg="6" :xl="6">
                <div class="grid-content bg-purple">
                    <router-link :to="{ name: 'house', params: { id: row.id }}">
                        <house-card v-bind:item="row"></house-card>
                    </router-link>
                </div>
            </el-col>
        </el-row>
    </div>
</template>

<script>
    import HouseCard from './HouseCard'
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
            HouseCard
        }
    }
</script>

<style>
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
</style>
