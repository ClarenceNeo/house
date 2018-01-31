<template>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
              data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- <a class="navbar-brand" href="/">Brand</a> -->
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class=""><router-link to="/"> 首页 </router-link></li>
        <li class="" v-if="user.permission == 'admin'"><router-link to="/admin"> 后台 </router-link></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <router-link v-if="!user.authenticated" to="/login" tag="li">
          <a>登录</a>
        </router-link>
        <router-link v-if="!user.authenticated" to="/register" tag="li">
          <a>注册</a>
        </router-link>
        <router-link v-if="user.authenticated" to="/house/add" tag="li">
          <a>发布房源</a>
        </router-link>
        <router-link v-if="user.authenticated" to="/profile" tag="li">
          <!-- <a>{{user.name}}</a> -->
          <a class="dropdown">
          <button id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            {{user.name}}
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
          </a>
        </router-link>
        <li  v-if="user.authenticated">
          <a @click.prevent="logout" href="#">退出</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</template>

<script>
  import {mapState} from 'vuex'
  export default {
    computed: {
      ...mapState({
        user: state => state.AuthUser
      })
    },
    methods: {
      logout() {
        this.$store.dispatch('logoutRequest').then(request => {
          this.$router.push({name: 'home'})
        })
      }
    }
  }
</script>
