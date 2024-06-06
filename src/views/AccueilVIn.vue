<template>
    <compo-barre></compo-barre>
    <h1>Bienvenue</h1>
    <img src="../assets/logoVSV.png" alt="">
    <table>
      <tr>
        <th>Degustation</th>
        <th>Date</th>
      </tr>
  <tab-degust></tab-degust>
  </table>
</template>
<script>
import compoBarre from '@/components/compoBarre.vue'
import tabDegust from '@/components/tabDegust.vue'
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
            const reponse= await fetch('http://localhost/vinSurVin/backVinSurVin/getDegustation.php')
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
<style></style>