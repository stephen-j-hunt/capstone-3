package com.techelevator.dao;

import com.techelevator.model.UserMovie;
import com.techelevator.model.Movie;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcUserMoviesDao implements UserMoviesDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcUserMoviesDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    //returns a user's favorite movies from user_favorites table
    @Override
    public List<Movie> getFavoriteMovies(int userId) {
        String sql = "SELECT * FROM movies JOIN user_favorites ON movies.id = user_favorites.movie_id WHERE user_favorites.user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        List<Movie> favoriteMovies = new ArrayList<>();
        while (results.next()) {
            final Movie movie = JdbcMovieDao.mapRowToMovie(results);
            favoriteMovies.add(movie);
        }

        return favoriteMovies;
    }

    //adds a movie to a user_favorites table by userId and the movieId
    @Override
    public void addFavoriteForUser(int userId, int movieId) {
        String sql = "INSERT INTO user_favorites(user_id, movie_id) VALUES(?, ?) on conflict do nothing;";

        jdbcTemplate.update(sql, userId, movieId);

    }

    // removes a movie from the user_favorites table by userId and movieId
    @Override
    public void removeFavoriteForUser(int userId, int movieId) {
        String sql = "DELETE FROM user_favorites WHERE user_id = ? AND movie_id = ?;";

        jdbcTemplate.update(sql, userId, movieId);
    }

    //returns the user's watchlist movies from user_watchlist table
    @Override
    public List<Movie> getWatchlist(int userId) {
        String sql = "SELECT * FROM movies JOIN user_watchlist ON movies.id = user_watchlist.movie_id WHERE user_watchlist.user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        List<Movie> watchlist = new ArrayList<>();
        while (results.next()) {
            final Movie movie = JdbcMovieDao.mapRowToMovie(results);
            watchlist.add(movie);
        }

        return watchlist;

    }

    //adds a movie to the user_watchlist table by userId and movieId
    @Override
    public void addMovieToWatchlistForUser(int userId, int movieId) {
        String sql = "INSERT INTO user_watchlist(user_id, movie_id) VALUES(?, ?) on conflict do nothing;";

        jdbcTemplate.update(sql, userId, movieId);

    }

    @Override
    public void removeMovieFromWatchlistForUser(int userId, int movieId) {
        String sql = "DELETE FROM user_watchlist WHERE user_id = ? AND movie_id = ?;";
        jdbcTemplate.update(sql, userId, movieId);

    }
}
