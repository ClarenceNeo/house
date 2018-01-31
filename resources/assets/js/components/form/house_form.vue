<template>
  <div>
    <el-form ref="form" :model="form" label-width="90px">
      <el-form-item label="房源标题">
        <el-input v-model="form.title"></el-input>
      </el-form-item>
      <el-form-item label="子标题">
        <el-input v-model="form.subTitle"></el-input>
      </el-form-item>
      <el-form-item label="封面图片">
        <upload v-on:uploadSuccess="saveUrl"></upload>
      </el-form-item>
      <el-form-item label="所在区域">
        <el-select v-model="form.region" placeholder="请选择活动区域">
          <el-option label="东城区" value="东城区"></el-option>
          <el-option label="西城区" value="西城区"></el-option>
          <el-option label="朝阳区" value="朝阳区"></el-option>
          <el-option label="丰台区" value="丰台区"></el-option>
          <el-option label="石景山区" value="石景山区"></el-option>
          <el-option label="海淀区" value="海淀区"></el-option>
          <el-option label="门头沟区" value="门头沟区"></el-option>
          <el-option label="房山区" value="房山区"></el-option>
          <el-option label="通州区" value="通州区"></el-option>
          <el-option label="顺义区" value="顺义区"></el-option>
          <el-option label="昌平区" value="昌平区"></el-option>
          <el-option label="大兴区" value="大兴区"></el-option>
          <el-option label="怀柔区" value="怀柔区"></el-option>
          <el-option label="平谷区" value="平谷区"></el-option>
          <el-option label="密云区" value="密云区"></el-option>
          <el-option label="延庆区" value="延庆区"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="房屋面积">
        <el-input v-model="form.area"></el-input>
      </el-form-item>
      <el-form-item label="房屋单价">
        <el-input v-model="form.unitPrice"></el-input>
      </el-form-item>
      <el-form-item label="房屋总价">
        <el-input v-model="form.price"></el-input>
      </el-form-item>
      <el-form-item label="户型">
        <el-select placeholder="请选择几室" v-model="form.roomCount.bedRoom">
          <el-option label="1" value="1"></el-option>
          <el-option label="2" value="2"></el-option>
          <el-option label="3" value="3"></el-option>
          <el-option label="4" value="4"></el-option>
          <el-option label="5" value="5"></el-option>
        </el-select>
        <el-select placeholder="请选择几厅" v-model="form.roomCount.livingRoom">
          <el-option label="1" value="1"></el-option>
          <el-option label="2" value="2"></el-option>
          <el-option label="3" value="3"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="房屋朝向">
        <el-checkbox-group v-model="form.direction">
          <el-checkbox label="东" name="type"></el-checkbox>
          <el-checkbox label="南" name="type"></el-checkbox>
          <el-checkbox label="西" name="type"></el-checkbox>
          <el-checkbox label="北" name="type"></el-checkbox>
          <el-checkbox label="东南" name="type"></el-checkbox>
          <el-checkbox label="东北" name="type"></el-checkbox>
          <el-checkbox label="西南" name="type"></el-checkbox>
          <el-checkbox label="西北" name="type"></el-checkbox>
        </el-checkbox-group>
      </el-form-item>
      <el-form-item label="隶属小区">
        <el-input v-model="form.community"></el-input>
      </el-form-item>
      <el-form-item label="楼层">
        <el-input v-model="form.floor"></el-input>
      </el-form-item>
      <el-form-item label="总楼层">
        <el-input v-model="form.floors"></el-input>
      </el-form-item>
      <el-form-item label="房屋类型">
        <el-radio-group v-model="form.houseType">
          <el-radio label="别墅"></el-radio>
          <el-radio label="公寓楼"></el-radio>
          <el-radio label="普通住宅"></el-radio>
          <el-radio label="商品房"></el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="是否有电梯">
        <el-switch v-model="form.elevator"></el-switch>
      </el-form-item>
      <el-form-item label="联系人">
        <el-input v-model="form.contact"></el-input>
      </el-form-item>
      <el-form-item label="联系电话">
        <el-input v-model="form.tel"></el-input>
      </el-form-item>
      <el-form-item label="装修">
        <el-radio-group v-model="form.decoration">
          <el-radio label="精装"></el-radio>
          <el-radio label="简装"></el-radio>
          <el-radio label="毛胚"></el-radio>
          <el-radio label="其它"></el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="楼龄">
        <el-input v-model="form.floorAge"></el-input>
      </el-form-item>
      <el-form-item label="供暖类型">
        <el-radio-group v-model="form.supplyHeating">
          <el-radio label="集中"></el-radio>
          <el-radio label="个人"></el-radio>
          <el-radio label="无"></el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="小区信息">
        <el-input type="textarea" v-model="form.communityInfo"></el-input>
      </el-form-item>
      <el-form-item label="周边设施">
        <el-input type="textarea" v-model="form.surroundings"></el-input>
      </el-form-item>
      <el-form-item label="交通出行">
        <el-input type="textarea" v-model="form.traffic"></el-input>
      </el-form-item>
      <el-form-item label="房屋年限">
        <el-input v-model="form.houseAgeLimit"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">立即创建</el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>


<script>
import Upload from './../upload/EL_upload'

  export default {
    data() {
      return {
        form: {
          title: '南北通透板楼不临街不把边 实景婚房精装修',
          subTitle: '南湖东园二区不临街不把边 南北通透两居室 双阳台',
          cover: 'http://p3cur76xq.bkt.clouddn.com/home.jpg',
          region: '昌平区',
          area: '200',
          unitPrice: '50000',
          price: '10000000',
          roomCount: {
            livingRoom: '2',
            bedRoom: '3'
          },
          direction: ['东','南'],
          community: '南湖东园',
          floor: '8',
          floors: '20',
          houseType: '公寓楼',
          elevator: true,
          contact: '李先生',
          tel: '13800000000',
          decoration: '精装',
          floorAge: '10',
          supplyHeating: '集中',
          communityInfo: '小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入',
          surroundings: '出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。',
          traffic: '小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。',
          houseAgeLimit: '70',
        }
      }
    },
    methods: {
      onSubmit() {
        console.log('submit!')
        console.log(this.form)

        axios.post('/api/house/add', this.form)
      },
      saveUrl(data) {
        // this.form.cover = 'p3cur76xq.bkt.clouddn.com/' + data
      }
    },
    components: {
      Upload,
    }
  }
</script>