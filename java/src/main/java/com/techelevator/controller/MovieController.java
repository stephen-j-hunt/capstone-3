package com.techelevator.controller;

import com.techelevator.dao.GenreDao;
import com.techelevator.dao.MovieDao;
import com.techelevator.dao.UserMoviesDao;
import com.techelevator.model.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class MovieController {
    private final MovieDao movieDao;
    private final GenreDao genreDao;
//    private final UserMoviesDao userMoviesDao;


    public MovieController(MovieDao movieDao, GenreDao genreDao) {
        this.movieDao = movieDao;
        this.genreDao = genreDao;
//        this.userMoviesDao = userMoviesDao;

    }

    // gets a list of all movies
    @GetMapping("/movies")
    public List<Movie> getAll() {return this.movieDao.getAll();}

    //gets a movie by its ID
    @GetMapping("/movies/{id}")
    public Movie getMovieById(@PathVariable int id) {return this.movieDao.getMovieById(id);}

    //gets a list of movies by genre
    @GetMapping("/movies/genres/{genreId}")
    public List <Movie> getMoviesByGenreId(@PathVariable int genreId) {return this.movieDao.getMoviesByGenreId(genreId);}

    //gets a list of all genres
    @GetMapping("/genres")
    public List<Genre> getAllGenres() {
        return this.genreDao.getAllGenres();
    }









}
