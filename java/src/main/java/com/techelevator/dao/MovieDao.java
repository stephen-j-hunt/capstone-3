package com.techelevator.dao;

import com.techelevator.model.Movie;

import java.util.List;

public interface MovieDao {

    //get a list of all movies
    List<Movie> getAll();

    Movie getMovieById(int id);

    List<Movie> getMoviesByGenreId(int genreId);

}
