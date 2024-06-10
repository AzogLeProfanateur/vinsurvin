<template>
  <compo-barre> </compo-barre>
  <table class="tabVin">
    <tr>
      <th> Id </th>
      <th>Nom</th>
      <th>Domaine</th>
      <th>Cépages</th>
      <th>Couleur</th>
      <th>Annee</th>
      <th>Contenance</th>
      <th>supprimer</th>
      <th>consulter</th>
    </tr>
    <compo-tab v-for="vin in listeVin" :vin="vin" :key="vin.IdVin" />
  </table>
</template>
<script>
import compoBarre from "@/components/compoBarre.vue";
import compoTab from "@/components/compoTab.vue";
let valUti = localStorage.getItem('id')
export default {
  name: "myCave",
  components: {
    compoBarre,
    compoTab,
  },

  mounted() {
    this.afficheVin();
  },
  methods: {
    afficheVin: async function afficherVins() {
      let envoiU = new FormData()
      envoiU.append('id',valUti)
      console.log(localStorage.getItem('id'))
      console.log(valUti)
      console.log(document.getElementById('id'))
      //let monTab = document.getElementById("tab");
      const reponse = await fetch(
        "https://leperre.alwaysdata.net/backVinSurVin/getWine.php",{
          method:'POST',
          body:envoiU
        });
      this.listeVin = await reponse.json();
      console.log(this.listeVin);
    }
  },
  data() {
    return {
      valid: false,
      listeVin: [],
    };
  },
};
</script>
<style>
body {
  background-color: rgb(237, 214, 152);
}
.tabVin{
  margin:auto;
  margin-top:200;
}
</style>
