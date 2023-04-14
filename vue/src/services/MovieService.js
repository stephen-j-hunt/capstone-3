import axios from 'axios';

export default {
  getUserById(id) {
    return axios.get(`/users/${id}`);
  },
  //gets all movies
  getAll() {
    return axios.get('/movies');
  },
  // gets all genres
  getAllGenres() {
    return axios.get('/genres');
  },

  // not sure if needed?
  getGenreByUserId(id) {
    return axios.get(`/genres/${id}`);
  },

  //updates user's genre preferences
  addUserPrefs(user) {
    return axios.put(`/users/${user.id}/preferences`, user.preferences);
  },

  //gets a movie by its id
  getMovieById(id) {
    return axios.get(`/movies/${id}`);
  },

  getMoviesByGenreId(genreId) {
    return axios.get(`/movies/genres/${genreId}`);
  },

  getFavorites(id) {
    return axios.get(`/userMovies/${id}/favorites`);
  },
  getWatchlist(id) {
    return axios.get(`/userMovies/${id}/watchlist`);
  }





}
