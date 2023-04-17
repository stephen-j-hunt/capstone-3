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

  updateUserPrefs(userId, preferences) {
    return axios.put(`/users/${userId}/preferences`, preferences);
  },
  getUserPrefs(userId) {
    return axios.get(`/users/${userId}/preferences`);
  },

  //gets a movie by its id
  getMovieById(id) {
    return axios.get(`/movies/${id}`);
  },

  getMoviesByGenreId(genreId) {
    return axios.get(`/movies/genres/${genreId}`);
  },

  getFavorites(user) {
    return axios.get(`/users/${user.id}/favorites`);
  },

  addFavorite(user, movie) {
    return axios.post(`/users/${user.id}/favorites`, movie);
  },

  deleteFavorite(user, movie) {
    return axios.delete(`/users/${user.id}/favorites/${movie.id}`);
  },

  getWatchlist(user) {
    return axios.get(`/users/${user.id}/watchlist`);
  },

  addToWatchlist(user, movie) {
    return axios.post(`/users/${user.id}/watchlist`, movie);
  },
  deleteFromWatchlist(user, movie) {
    return axios.delete(`/users/${user.id}/watchlist/${movie.id}`);
  }







}
