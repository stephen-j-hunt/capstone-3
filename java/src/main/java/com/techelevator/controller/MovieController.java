package com.techelevator.controller;

import com.techelevator.dao.GenreDao;
import com.techelevator.dao.MovieDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Genre;
import com.techelevator.model.Movie;
import com.techelevator.model.User;
import com.techelevator.model.UserGenreDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class MovieController {
    private final MovieDao movieDao;
    private final GenreDao genreDao;
    private final UserDao userDao;

    public MovieController(MovieDao movieDao, GenreDao genreDao, UserDao userDao) {
        this.movieDao = movieDao;
        this.genreDao= genreDao;
        this.userDao = userDao;
    }

    @GetMapping("/movies")
    public List<Movie> getAll() {return this.movieDao.getAll();}

    @GetMapping("/users")
    public List<User> findAll() {return this.userDao.findAll();}

    @GetMapping("/users/{id}")
    public User getUserById(@PathVariable int id){
        return this.userDao.getUserById(id);
    }

    @GetMapping("/genres")
    public List<Genre> getAllGenres() {
        return this.genreDao.getAllGenres();
    }

    @GetMapping("/genres/{id}")
    public List<Genre> getGenreByUserId(@PathVariable int id){
        return genreDao.getGenreByUserId(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/genres")
    public void addGenresToPref(@RequestBody UserGenreDto userGenreDto) {
        genreDao.create(userGenreDto.getUserId(), userGenreDto.getGenreId());
    }





}
