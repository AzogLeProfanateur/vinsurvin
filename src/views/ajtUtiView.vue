<template>
   
     <compo-barre></compo-barre>
     
    <table>
        <tr>
            <!-- <th>nom</th>
            <th>prenom</th> -->
            <th>Id</th>
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
let valUti = localStorage.getItem('id')
import compoBarre from '@/components/compoBarre.vue'

import compoTabuti from '@/components/compoTabUsers.vue'
export default {
    name: "ajtUti",
    components : {
        
        compoBarre,
        compoTabuti
    },
    mounted (){
        this.afficheUti()
    },
    methods : {
      afficheUti:  async function  afficherUti (){
        let envoiU = new FormData();
        envoiU.append('id', valUti);
            const reponse = await fetch('https://leperre.alwaysdata.net/backVinSurVin/searchUsers.php',{
                method:'POST',
                body:envoiU
            });
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