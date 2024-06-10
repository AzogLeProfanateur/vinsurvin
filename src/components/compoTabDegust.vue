<template>
 <tr>
        <th>
        {{ degustation.LIbelDegustation }}
        </th>
        <th>
        {{ degustation.dateDegustation }}
        </th> 
 </tr>
</template>

<script>
// import store from '@/store'
export default {
  name: 'tabDegust',
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
    degustation : Object
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
    // methods here
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
