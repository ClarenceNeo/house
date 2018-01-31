<template>
    <div class="container">
        <house-form></house-form>
    </div>
</template>

<script>
import HouseForm from './../form/house_form'
export default {
  data() {
      return {
        image: ''
      }
    },
  methods: {
  },
  components: {
    HouseForm
  }
}
</script>
