<template>
    <h1>nique zeubi</h1>
    <compo-barre></compo-barre>
    <button v-on:click="winePairing">aller zou</button>
</template>
<script>
import compoBarre from '@/components/compoBarre.vue'
export default {
    name: "leVin",
   
    components:{
        compoBarre
    },
    methods : {
      winePairing:  async function  winePairing (){
            const reponse = await fetch('https://leperre.alwaysdata.net/backVinSurVin/winePairing.php')
            const plat  = await reponse.json();
            console.log(plat);
            console.log('coucou');
        }
    }
// gérer ça avec l'id du vin peut etre en paramètre c'est une idée comme ça 
//j'ai mal au couilles
// j'ai envie de baiser beaucoup
//sahtenne casse toi
}
</script>
<style>
</style>