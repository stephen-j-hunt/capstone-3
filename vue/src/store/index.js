import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if (currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    token: currentToken || '',
    user: currentUser || {},
    genres: [],
    movies: [],
    userMovies: {
      favorites: [],
      watchlist: [],
    }
  },
  getters: {
    getRandomMovies: state => {
      // shuffle the movies array
      const shuffled = state.movies.sort(() => 0.5 - Math.random());
      // return the first 5 items
      return shuffled.slice(0, 5);
    },
    getUser: state => {
      return state.user;
    },
    getFavorites: state => {
      return state.userMovies.favorites;
    },
    getWatchlist: state => {
      return state.userMovies.watchlist;
    }

  },

  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
      console.log('Token set:', state.token);
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user', JSON.stringify(user));
      console.log('User set:', state.user);
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    SET_MOVIES(state, movies) {
      state.movies = movies;
    },
    SET_GENRES(state, genres) {
      state.genres = genres;
    },
    SET_USER_MOVIES(state, userMovies) {
      state.userMovies = userMovies;
    },

    SET_USER_PREFS(state, preferences) {
      state.user.preferences = preferences;
    },

    SET_FAVORITES(state, favorites) {
      state.userMovies.favorites = favorites;
    },
    SET_WATCHLIST(state, watchlist) {
      state.userMovies.watchlist = watchlist;
    },
    //add to favorites list
    ADD_FAVORITE(state, movie) {
      state.userMovies.favorites.push(movie);
    },
    //add to watchlist
    ADD_TO_WATCHLIST(state, movie) {
      state.userMovies.watchlist.push(movie);
    }

  }
})
