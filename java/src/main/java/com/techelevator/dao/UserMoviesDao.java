package com.techelevator.dao;

import com.techelevator.controller.UserMovies;
import com.techelevator.model.Movie;

import java.util.List;

public interface UserMoviesDao {

    void setUserMovies(UserMovies userMovies);
    List<Movie> getFavoriteMovies(int userId);
    List<Movie> getWatchlist(int userId);
}
