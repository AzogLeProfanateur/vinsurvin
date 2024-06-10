import { createRouter, createWebHashHistory } from 'vue-router'
import MaCave from '../views/myCave.vue'
import ajoutAmi from '../views/ajtUtiView.vue'
import AccueilVIn from '../views/AccueilVIn.vue'
import ajoutVin from '../views/ajtVinView.vue'
import creerCompte from '@/views/creerCompte.vue'
import connexion from '@/views/connexionView.vue'
import AccordVin from '@/views/AccordView.vue'
import caveAmi from '@/views/caveAmiView.vue'
import menuVin from '@/views/menuView.vue'


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
    path: '/Compte',
    name: 'creerCompte',
    component: creerCompte
  },
  {
    path: '/Connexion',
    name: 'ConnexionView',
    component: connexion
  },
  {
    path: '/Accord',
    name: 'AccordView',
    component: AccordVin
  },
  {
    path: '/CaveAmi',
    name: 'caveAmiView',
    component: caveAmi
  },
  {
    path: '/Menu',
    name: 'menuView',
    component: menuVin
  },
  
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
