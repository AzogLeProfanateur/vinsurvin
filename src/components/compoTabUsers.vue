<template>
    <th id="idUti">{{ User.IdUtilisateur }}</th>
    
    <th>{{ User.Login }}</th>
    <th>{{ User.Nom }}</th>
    <th>{{ User.Prenom }}</th>
    
    <th> <button v-on:click="consultCell()">Consulter</button> </th>
     
       
</template>
<script>
//let valUti = document.getElementById('idUti').value
export default {
    name:'compoTabUsers',
    props: {
        User : Object
    },
    methods:{
        consultCell: function(){
            localStorage.setItem('idUti',this.User.IdUtilisateur)
            //let formData = new FormData()
            //formData.append('id',this.User.IdUtilisateur)
            this.$router.push('/caveAmi')
            console.log(this.User.IdUtilisateur)
        }
    }
}
</script>
<style></style>