<template>
    
<input v-model="this.connexion.login" type="text" name="login" id="login" placeholder="Login">
<input v-model="this.connexion.mdp" type="password" name="mdp" id="mdp" placeholder="Mot de passe">
       
    
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
          connexionUti : async function (){
            let formCo = new FormData();
            formCo.append('login',this.connexion.login)
            formCo.append('mdp',this.connexion.mdp)

            const sendDataCo =  await fetch('https://leperre.alwaysdata.net/backVinSurVin/connexion.php',{
                method:'POST',
                body:formCo
                
            })
            
           
            const response = await sendDataCo.json()
            //
            console.log(response)
            if(response.id){
            
           await this.$router.push('/')
            
            console.log('connexion réussie')
            localStorage.setItem('id',response.id)
            
            } 
                else{
                    
                    await this.$router.push('/connexion')
                }
            }
            
           

        }
    }

</script>
<style>
</style>