<template>
    <compo-barre></compo-barre>
   
        <table class="tabVin">
    <tr>
      <th> Id </th>
      <th>Nom</th>
      <th>Domaine</th>
      <th>Cépages</th>
      <th>Couleur</th>
      <th>Annee</th>
      <th>Vignoble</th>
      <th>Contenance</th>
      <th>Ajouter</th>
     </tr>
    <compo-tab v-for="vin in listeVin" :vin="vin" :key="vin.IdVin" />
  </table>

</template>
<script>

import compoBarre from '@/components/compoBarre.vue'
import compoTab from '@/components/compoAjtVin.vue'
export default{
    name:"ajtVin",
    data () {
        return{
           listeVin:[]
        }
    },

    components : {
        
        compoBarre,
        compoTab
    },
    methods : {
        rechercheVin : async  function(){
            let formR = new FormData()
            formR.append('id',localStorage.getItem('id'))
            const reponse = await fetch('https://leperre.alwaysdata.net/backVinSurVin/searchWine.php',{
                method:'POST',
                body:formR
            })
            this.listeVin = await reponse.json()
            console.log(this.listeVin)
            console.log(reponse)
        },
     
    },
    mounted () {
        this.rechercheVin()
    }
  
    


}
</script>
<style>
</style>