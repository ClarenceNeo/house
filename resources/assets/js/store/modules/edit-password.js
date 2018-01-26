export default {
  actions: {
    updatePasswordRequest({dispatch}, formData){
      return axios.post('/api/userPasswordUpdate', formData).then(response => {
        if (response.data.status) {
          dispatch('showNotification', { level: 'success', msg: '修改密码成功！' })
        }else{
          dispatch('showNotification', { level: 'error', msg: '修改密码失败！' })
        }
        return response.data;
      })
    },
  }
}
