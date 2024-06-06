<template>
    
<input v-model="connexion.login" type="text" name="login" id="login" placeholder="Login">
<input v-model="connexion.mdp" type="text" name="mdp" id="mdp" placeholder="Mot de passe">
       
    
    <button @click="connexionUti()">connexion</button>
</template>
<script>
import { store } from '@/store/store.js'
export default{
    name:'formCo',
    data ()  {
        return {
            connexion:{
                login:'',
                mdp:''
            },
            dataStore:store

        }
    },
    methods:{
        connexionUti : function (){
            let formCo = new FormData();
            formCo.append('login',JSON.stringify(this.connexion.login))
            formCo.append('mdp',JSON.stringify(this.connexion.mdp))

            const sendData = fetch('http://localhost/vinSurVin/backVinSurVin/connexion.php',{
                method:'POST',
                body:formCo
                
            })
            console.log(sendData)
            

            .then(response=>response.json())
            .then(response=>{
                
                if(response.statut == 200){
                    window.alert('Connexion Réussie')
                    this.dataStore.IdUtilisateur = response.IdUtilisateur
                    console.log(this.dataStore.IdUtilisateur)
                    this.$router.push('/')
                }
                else{
                    window.alert('Connexion échouée')
                
                }
            }
            )
        }
    }
}
</script>
<style>
</style>