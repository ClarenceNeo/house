<template>
    <div class="wrap">
        <!-- <carousel></carousel> -->
        
    </div>
</template>

<script>
    import Carousel from "./../house/Carousel";
    export default {
        mounted() {
            console.log(1);
            axios.post('/api/house/read', { id: this.$route.params.id } ).then(r => {
              this.house = r.data;
            })
        },
        data(){
          return {
            house: {}
          }
        },
        components: {
            Carousel
        }
    }
</script>
