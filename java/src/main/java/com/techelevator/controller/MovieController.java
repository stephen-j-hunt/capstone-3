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
    private final UserMoviesDao userMoviesDao;


    public MovieController(MovieDao movieDao, GenreDao genreDao, UserMoviesDao userMoviesDao) {
        this.movieDao = movieDao;
        this.genreDao = genreDao;
        this.userMoviesDao = userMoviesDao;

    }

    @GetMapping("/movies")
    public List<Movie> getAll() {return this.movieDao.getAll();}

    @GetMapping("/movies/{id}")
    public Movie getMovieById(@PathVariable int id) {return this.movieDao.getMovieById(id);}

    @GetMapping("/movies/genres/{genreId}")
    public List <Movie> getMoviesByGenreId(@PathVariable int genreId) {return this.movieDao.getMoviesByGenreId(genreId);}


    @GetMapping("/genres")
    public List<Genre> getAllGenres() {
        return this.genreDao.getAllGenres();
    }

    @GetMapping("/userMovies/{id}/favorites")
    public List<Movie> getFavoriteMovies(@PathVariable int id) {
        return this.userMoviesDao.getFavoriteMovies(id);
    }

    @GetMapping("/userMovies/{id}/watchlist")
    public List<Movie> getWatchlist(@PathVariable int id) {
        return this.userMoviesDao.getWatchlist(id);
    }

    @PutMapping("/userMovies")
    public void setUserMovies(@RequestBody UserMovies userMovies) {
        this.userMoviesDao.setUserMovies(userMovies);
    }



//    @GetMapping("/genres/{id}")
//    public List<Genre> getGenreByUserId(@PathVariable int id){
//
//        return genreDao.getGenreByUserId(id);
//    }








}
