import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import MyAccount from '../views/MyAccount.vue'
import MyMovies from '../views/MyMovies.vue'
import RecommendedMovies from '../views/RecommendedMovies.vue'
import MovieCardDetail from '../views/MovieCardDetail.vue'
import AllMovies from '../views/AllMovies.vue'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/my-account",
      name: "my-account",
      component: MyAccount,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/my-movies",
      name: "my-movies",
      component: MyMovies,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/recommended-movies",
      name: "recommended-movies",
      component: RecommendedMovies,
      meta: {
        requiresAuth: true //change this to true
      }
    },
    {
      path: '/movie-card-detail/:id',
      name: 'movie-card-detail',
      component: MovieCardDetail,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: '/all-movies',
      name: 'all-movies',
      component: AllMovies,
      meta: {
        requiresAuth: false
      }
    }
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
  console.log('Requires auth:', requiresAuth);
  console.log('Token:', store.state.token);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    next("/login");
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
