<template>
<tr>
    <th>{{ plat.NomVin }}</th>
    <th>{{ plat.nomMenu }}</th>
   
    <th><button @click="detail()">consulter ce Menu</button></th>

  </tr>
</template>

<script>
// import store from '@/store'
export default {
  name: 'compoTabPlat',
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
    plat : Object
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
    detail: function(){
      let menu = localStorage.setItem('idMenu',this.plat.IdMenu)
      console.log(menu)
      this.$router.push('/Menu')
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
