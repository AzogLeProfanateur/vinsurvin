<template>

    <input v-model="this.motCle" name="cleVin" class="input" type="text">
        
    <button v-on:click="recherche()">rechercher le vin</button>



</template>
<script>
export default {
    name:"searchBar",
    data () {
        return{
            motCle:''
        }
    },
    method:{
        recherche:  function  (){
            let formMot = new FormData();
            formMot.append('cleVin',this.motCle);
            const envoiMot = fetch('http://localhost/vinSurVin/backVinSurVin/searchWine.php',{
                method:'POST',
                body:formMot
               
            })
            
            console.log(envoiMot)

        }
    }
}
</script>
<style>
.divFOrm{
    
    border:solid;
    display: flex;
    justify-content: center;
   
}
.input{
    margin-right: 40px;
    margin-left: 40px;
    padding-right: 40px;
    padding-left:40px;
    padding-top:20px;
    padding-bottom: 20px;
    border-radius: 25rem;
    text-align: center;
    font-size: larger;
    color: rgb(109 , 7 , 26);
}
.btnForm{
    color: rgb(109 , 7 , 26);
}

</style>