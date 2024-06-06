<template>
 
    <th>{{ User.Nom }}</th>
    <th>{{ User.Prenom }}</th>
    <th>{{ User.Login }}</th>
     
       
</template>
<script>
export default {
    name:'compoTabUsers',
    props: {
        User : Object
    }
}
</script>
<style></style>