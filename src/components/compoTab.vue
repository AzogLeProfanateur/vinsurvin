<template>
        <tr>
            <th>{{ vin.IdVin }}</th>
            <th>{{ vin.NomVin }}</th>
            <th>{{ vin.Domaine }}</th>
            <th>{{ vin.Cepage }}</th>
            <th>{{ vin.Couleur }}</th>
            <th>{{ vin.Annee }}</th>
            <th>{{ vin.LibelContenance }}</th>
            
            
            <th><button class="btnSup" v-on:click="deleteVin(vin.IdVin)">Supprimer</button></th>
            <th><button  v-on:click="redirect()">Consulter</button></th>
            </tr>
</template>
<script>
export default {
    name:"compoTab",
    props:{
         vin : Object
    },
    methods : {
            deleteVin: async function deleteVins (IdVin) {
                let formDelete = new FormData()
                formDelete.append('id',this.vin.IdVin)
          const reponse =  fetch("https://leperre.alwaysdata.net/backVinSurVin/deleteWine.php",{
            method : 'POST',
            body:formDelete
          }
          
          );
        
          console.log(IdVin)
          
          console.log(reponse)
           
            
            console.log(formDelete);
            console.log("coucou");
        },
       
    }
}
</script>
<style>
.btnSup{
    border:solid;
    background-color: red;
}
</style>