package com.techelevator.controller;

import com.techelevator.dao.GenreDao;
import com.techelevator.dao.MovieDao;
import com.techelevator.model.Genre;
import com.techelevator.model.Movie;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class MovieController {
    private final MovieDao movieDao;
    private final GenreDao genreDao;

    public MovieController(MovieDao movieDao,GenreDao genreDao) {
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
