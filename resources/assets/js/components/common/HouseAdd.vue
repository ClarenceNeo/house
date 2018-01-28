<template>
    <div class="container">
        <h2>发布房源</h2>
        <!-- <upload></upload> -->
        <test></test>
    </div>
</template>

<script>
import Upload from './../upload/EL_upload'
import Test from './../upload/Test'
export default {
  data() {
      return {
        image: ''
      }
    },
  methods: {
  },
  components: {
    Upload,
    Test
  }
}
</script>
