<template>
  <compo-barre> </compo-barre>
  <table class="tab">
    <tr>
      <th> Id </th>
      <th>Nom</th>
      <th>Domaine</th>
      <th>Cépages</th>
      <th>Couleur</th>
      <th>Annee</th>
      <th>Contenance</th>
      <th>supprimer</th>
    </tr>
    <compo-tab v-for="vin in listeVin" :vin="vin" :key="vin.IdVin" />
  </table>
</template>
<script>
import compoBarre from "@/components/compoBarre.vue";
import compoTab from "@/components/compoTab.vue";
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
      //let monTab = document.getElementById("tab");
      const reponse = await fetch(
        "https://leperre.alwaysdata.net/backVinSurVin/getWine.php");
      this.listeVin = await reponse.json();
      console.log(this.listeVin);
    },
    deleteVin: async function deleteVins() {
      const reponse = await fetch(
        "http://localhost/vinSurVin/backVinSurVin/deleteWine.php",{
          method:'DELETE'
        }
      );
      console.log(reponse)
     
    },
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
.tab{
  margin:auto;
  margin-top:200;
}
</style>
