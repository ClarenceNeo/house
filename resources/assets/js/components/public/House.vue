<template>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4>{{house.title}}</h4>
                    </div>
                    <div class="panel-body">
                      <div class="bs-callout bs-callout-danger">
                        <p>{{ house.cover }}</p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
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
        }
    }
</script>
