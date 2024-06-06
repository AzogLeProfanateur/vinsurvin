<template>
   
     <compo-barre></compo-barre>
    <search></search>  
    <table>
        <tr>
            <!-- <th>nom</th>
            <th>prenom</th> -->
            <th>Login</th>
            <th>nom</th>
            <th>prenom</th>
            <th>consulter leurs caves</th>
         </tr>
         <tr v-for="user in listeUti" :key="user">
            <compo-tabuti :User="user"></compo-tabuti>
         </tr>
        <!-- </div> -->
    </table>
   
   
</template>
<script>
import compoBarre from '@/components/compoBarre.vue'
import search from '@/components/searchBar.vue'
import compoTabuti from '@/components/compoTabUsers.vue'
export default {
    name: "ajtUti",
    components : {
        search,
        compoBarre,
        compoTabuti
    },
    mounted (){
        this.afficheUti()
    },
    methods : {
      afficheUti:  async function  afficherUti (){
            const reponse = await fetch('https://leperre.alwaysdata.net/backVinSurVin/searchUsers.php');
            this.listeUti  = await reponse.json();
            console.log(this.listeUti);
            
        }
      
    },
    data() {
      return {     
        valid: false,
        listeUti : []
    };
    },
 

}
</script>
<style></style>