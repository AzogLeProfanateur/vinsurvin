<template>
<h1 class="titre">Connectez vous</h1>

<form-co></form-co>

</template>

<script>
// import store from '@/store'
import formCo from '@/components/formCo.vue'
export default {
  name: 'connexionView',
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
    formCo
  },
  props: {
    // props here
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

</style>
