import { createRouter, createWebHashHistory } from 'vue-router'
import MaCave from '../views/myCave.vue'
import ajoutAmi from '../views/ajtUti.vue'
import AccueilVIn from '../views/AccueilVIn.vue'
import unVin from '../views/leVin.vue'
import ajoutVin from '../views/ajtVin.vue'
import creerCompte from '@/views/creerCompte.vue'
import connexion from '@/views/connexionView.vue'


const routes = [
  {
    path: '/',
    name: 'AccueilVIn',
    component: AccueilVIn
  },
  {
    path: '/ajoutAmi',
    name: 'ajtUti',
    component: ajoutAmi
  },
  {
    path: '/ajoutVin',
    name: 'ajtVin',
    component: ajoutVin
  },
  {
    path: '/Cave',
    name: 'My-Cave',
    component: MaCave
  },
  {
    path: '/Vin',
    name: 'vin',
    component: unVin
  },
  {
    path: '/Compte',
    name: 'creerCompte',
    component: creerCompte
  },
  {
    path: '/Connexion',
    name: 'ConnexionView',
    component: connexion
  },
  
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
