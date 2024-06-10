<template>

<barre-nav></barre-nav>
<table class="tab">
<tr>
    <th>pour le vin </th> 
    <th>vinsurvin conseille les menus suivant</th>
    <th>consulter le détail de ce menu</th>

    <compo-plat  v-for="plat in listePlat" :plat="plat" :key="plat"></compo-plat>
</tr>


   

</table>
 
</template>

<script>
let valVin = localStorage.getItem('vin')
// import store from '@/store'
import barreNav from '@/components/compoBarre.vue'
import compoPlat from '@/components/compoTabPlat'
export default {
  name: 'AccordView',
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
    compoPlat,
    barreNav
  },
  props: {
    plat: Object
  },
  watch: {
    // variables to watch here
  },
  data () {
    return {
     listePlat:[]
    }
  },
  methods: {
      accord : async function(){
        let formData = new FormData()
        formData.append('vin',valVin)
      const reponse = await   fetch('http://localhost/vinSurVin/backVinSurVin/getMenu.php',{
        method:'POST',
        body:formData
      })
      this.listePlat = await  reponse.json()
      console.log(this.listePlat)
      
    }
  },
  mounted () {
    this.accord()
  },
  created () {
    // created here
  }
}
</script>

<style scoped>
.tab{
  display: flex;
  justify-content: center;
}
</style>
