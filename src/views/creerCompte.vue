<template>
<h1>Créez un compte</h1>
<input v-model="newUser.nom" name="nom" type="text" placeholder="Nom">
<input v-model="newUser.prenom" name="prenom" type="text" placeholder="Prenom">
<input v-model="newUser.mdp" name="mdp" type="text" placeholder="Mot de passe">
<button v-on:click="creerCompte()">creer le compte</button>

</template>
<script>

export default{
    name:'formCrea',
    components:{
       
    },
    methods:{
        creerCompte : function (){
            let formCrea = new FormData();
            formCrea.append('dataCo',JSON.stringify(this.newUser));
            const envoiForm = fetch('https://leperre.alwaysdata.net/backVinSurVin/getWine.php',{
                method:'POST',
                body:formCrea
            }
           
                
            )
            console.log(formCrea)
            console.log(envoiForm)


            
        }
        
    },
    data () {
        return{
            newUser: {
                id:'',
                nom:'',
                prenom:'',
                mdp:''

            }
        }

    },
}
</script>
<style>
</style>