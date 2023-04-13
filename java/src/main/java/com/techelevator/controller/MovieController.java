package com.techelevator.controller;

import com.techelevator.dao.GenreDao;
import com.techelevator.dao.MovieDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class MovieController {
    private final MovieDao movieDao;
    private final GenreDao genreDao;


    public MovieController(MovieDao movieDao, GenreDao genreDao) {
        this.movieDao = movieDao;
        this.genreDao= genreDao;

    }

    @GetMapping("/movies")
    public List<Movie> getAll() {return this.movieDao.getAll();}


    @GetMapping("/genres")
    public List<Genre> getAllGenres() {
        return this.genreDao.getAllGenres();
    }

    @GetMapping("/genres/{id}")
    public List<Genre> getGenreByUserId(@PathVariable int id){
        return genreDao.getGenreByUserId(id);
    }







}
