<template>
    <compo-barre></compo-barre>
    <h1>Bienvenue</h1>
    <img src="../assets/logoVSV.png" alt="">
    <table class="tab">
      <tr>
        <th>Degustation</th>
        <th>Date</th>
      </tr>
  <tab-degust v-for="degust in listeDegust" :degustation="degust" :key="degust.IdDegustation"></tab-degust>
  </table>
</template>
<script>
import compoBarre from '@/components/compoBarre.vue'
import tabDegust from '@/components/compoTabDegust.vue'
export default {
    name:'AccueilVIn',
    components:{
        compoBarre,
        tabDegust
    },
    mounted () {
        this.getDegustation();
    },
    methods : {
      getDegustation:  async function  getDegustation (){
            const reponse= await fetch('https://leperre.alwaysdata.net/backVinSurVin/getDegustation.php')
            this.listeDegust  = reponse.json();
            console.log(this.listeDegust);
            console.log('coucou');
        }
    },
    data() {
    return {
      valid: false,
      listeDegust: [],
    };
  },

}
</script>
<style>
.tab{
  display: flex;
  justify-content: center;
  margin-top:10px;
}
img{
  height: 200px;
  width:300px;
}
</style>