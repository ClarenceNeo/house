import jwtToken from './../../helpers/jwt'

export default {
  actions: {
    loginRequest({dispatch}, formData){
      return axios.post('/api/login', formData).then(response => {
        if (response.data.status) {
          dispatch('loginSuccess', response.data.data)
          return response
        }else{
          return response
        }
      })
    },
    loginSuccess({dispatch}, tokenResponse){
      jwtToken.setToken(tokenResponse.token)
      dispatch('setAuthUser')
    },
    logoutRequest({dispatch}){
      return axios.post('/api/logout').then(response => {
        jwtToken.removeToken()
        dispatch('unsetAuthUser')
      })
    }
  }
}
