<template>
  <form @submit.prevent="updateProfile">
      <div class="form-group" :class="{'has-error': errors.has('name')}">
          <label for="name" class="control-label">用户名</label>
              <input v-model="name"
              v-validate data-vv-rules="required|min:4" data-vv-as="邮箱"
              id="name" type="text" class="form-control" name="name" required>
              <span class="help-block" v-show="errors.has('name')">{{errors.first('email')}}</span>
      </div>

      <div class="form-group" :class="{'has-error': errors.has('email')}">
          <label for="email" class="control-label">邮箱</label>
              <input v-model="email"
              v-validate data-vv-rules="required|email" data-vv-as="邮箱"
              id="email" type="email" class="form-control" name="email" required>
              <span class="help-block" v-show="errors.has('email')">{{errors.first('email')}}</span>
      </div>

      <div class="form-group">
          <div class="">
              <button type="submit" class="btn btn-primary">
                  更新
              </button>
          </div>
      </div>
  </form>
</template>

<script>
  import jwtToken from './../../helpers/jwt'
  import { ErrorBag } from 'vee-validate';
  import * as types from './../../store/mutation-type'

  export default {
    created(){
      this.$store.dispatch('setAuthUser')
    },
    computed: {
      name: {
        get(){
          return this.$store.state.AuthUser.name;
        },
        set(value){
          this.$store.commit({
            type: types.UPDATE_PROFILE_NAME,
            value: value
          })
        }
      },
      email: {
        get(){
          return this.$store.state.AuthUser.email;
        },
        set(value){
          this.$store.commit({
            type: types.UPDATE_PROFILE_EMAIL,
            value: value
          })
        }
      }
    },
    methods: {
      updateProfile(){
        const formData = {
          username: this.name,
          email: this.email
        }
        this.$store.dispatch('updateProfileRequest',formData).then(response => {
          if (response.data.status) {
            this.$router.push({name: 'profile'})
          }
        }).catch(error => {

        })
      }
    }
  }
</script>
