<template>
  <compo-barre></compo-barre>

  <table>
    <tr>
      <th> Id </th>
      <th>Nom</th>
      <th>Domaine</th>
      <th>Cépages</th>
      <th>Couleur</th>
      <th>Annee</th>
      <th>Contenance</th>
    </tr>
    <compo-tab  v-for="vin in listeVin" :vin="vin" :key="vin.IdVin"></compo-tab>
  </table>
  
</template>

<script>


// import store from '@/store'
import compoTab from '@/components/compoTab.vue'
import compoBarre from '@/components/compoBarre.vue'
export default {
  name: 'caveAmiView',
  head() {
    return {
      title: 'Document',
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Your Page Description',
        }
      ]
    }
  },
  components: {
    compoTab,
    compoBarre
  },
  props: {
    // props here
  },
  watch: {
    // variables to watch here
  },
  data () {
    return {
      listeVin:[]
    }
  },
  methods: {
    afficheVin: async function afficherVins() {
      let envoiU = new FormData()
      envoiU.append('id',localStorage.getItem('idUti'))
      console.log(localStorage.getItem('id'))
      
      console.log(document.getElementById('id'))
      //let monTab = document.getElementById("tab");
      const reponse = await fetch(
        "https://leperre.alwaysdata.net/backVinSurVin/getWine.php",{
          method:'POST',
          body:envoiU
        });
      this.listeVin = await reponse.json();
      console.log(this.listeVin);
  
      
    },
  },
  mounted () {
    this.afficheVin()
  },
  created () {
    // created here
  }
}
</script>

<style scoped>
/* Style here */
</style>
