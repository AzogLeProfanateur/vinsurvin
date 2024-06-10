<template>
    <tr>
            <th>{{ vin.IdVin }}</th>
            <th>{{ vin.NomVin }}</th>
            <th>{{ vin.Domaine }}</th>
            <th>{{ vin.Cepage }}</th>
            <th>{{ vin.Couleur }}</th>
            <th>{{ vin.Annee }}</th>
            <th>{{ vin.Nom }}</th>
            <th>{{ vin.LibelContenance }}</th>
      <th><button v-on:click="ajouter(vin.IdVin)">Ajouter le vin</button></th>


    </tr>
</template>

<script>
// import store from '@/store'
export default {
  name: 'compoAjtVin.vue',
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
    // components here
  },
  props: {
    vin:Object
  },
  watch: {
    // variables to watch here
  },
  data () {
    return {
      // variables here
      // dataStore: store
    }
  },
  methods: {
    ajouter : function (){
        let dataVin = new FormData()
        let uti = new FormData()
        uti.append('id',localStorage.getItem('id'))
        console.log(localStorage.getItem('id'))
        dataVin.append('data',this.vin)
        const reponse = fetch('https://leperre.alwaysdata.net/backVinSurVin/addWine.php',{
            method:'POST',
            body:dataVin
        })
        console.log(reponse)

    }
  },
  mounted () {
    // mounted here
  },
  created () {
    // created here
  }
}
</script>

<style scoped>
/* Style here */
</style>
