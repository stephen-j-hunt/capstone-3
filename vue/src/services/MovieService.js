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

  addGenreToPref(userGenreDto) {
    return axios.post(`/genres`, userGenreDto);
  },

  clearUserPrefs(id) {
    return axios.delete(`/users/${id}/preferences`);
  },

  addUserPrefs(id) {
    return axios.post(`/users/${id}/preferences`);
  }
  


}
