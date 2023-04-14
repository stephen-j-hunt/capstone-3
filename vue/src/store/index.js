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
    genres: [{
      id: "1",
      genreName: "sci-fi"
    },
    {
      id: "2",
      genreName: ""
    }
    ],
    movies: [{
      "id": 5,
      "title": "Belle époque",
      "releaseDate": "2022-09-05",
      "poster": "http://dummyimage.com/100x150.png/ff4444/ffffff",
      "overview": "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien"
    },
    {
      id: "2",
      title: "movie 2",
      releaseDate: "1990/10/10",
      poster: "https://m.media-amazon.com/images/I/81hrmOm3XKL._AC_SY879_.jpg",
      overview: "movie details for second"
    },
    {
      id: "3",
      title: "movie 3",
      releaseDate: "1990/10/10",
      poster: "https://m.media-amazon.com/images/I/81hrmOm3XKL._AC_SY879_.jpg",
      overview: "movie details that will be here for the third"
    }
    ],
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

  },

  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user', JSON.stringify(user));
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

  }
})
