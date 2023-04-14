import axios from 'axios';

export default {
  getUserById(id) {
    return axios.get(`/users/${id}`);
  },

  getAll() {
    return axios.get('/movies');
  },
  getAllGenres() {
    return axios.get('/genres');
  },

  getGenreByUserId(id) {
    return axios.get(`/genres/${id}`);
  },

  addUserPrefs(id, preferences) {
    return axios.put(`/users/${id}/preferences`, preferences);
  }



}
