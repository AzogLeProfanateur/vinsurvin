<template>
     <ul>
       
            <li><router-link class="nav-link" to="/"> Accueil</router-link>

        </li>
        <li><router-link class="nav-link" to="/Cave"> cave</router-link>
        </li>
        <li>
            <router-link class="nav-link" to="/ajoutVin"> ajouter un vin</router-link>
        </li>
        <li>
            <router-link class="nav-link" to="/ajoutAmi"> Ami</router-link>
        </li>
        <li>
          <a href="Accueil.html">Déconnexion</a>
      </li>
      </ul>
</template>
<script>
export default {
    name: 'compoBarre'
}
</script>
<style>
li{
    display:inline-flex;
    border:solid;
    border-radius:25rem;
    padding-top:5px;
    padding-bottom: 5px;
    padding-left:10px;
    padding-right: 10px;
    margin-left:25px;
}
li:hover{
    background-color: rgb(109 , 7 , 26);
}
a{
    text-decoration: none;
}
a:hover{
    color:white
}

@media (max-width: 600px) {
    li{
        display:block;
    }
   
    
}
</style>