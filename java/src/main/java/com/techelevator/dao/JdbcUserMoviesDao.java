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


//    @Override
//    public void setUserMovies(UserMovie userMovie) {
//        String sql = "SELECT * FROM user_movies WHERE user_id = ? AND movie_id = ?;";
//
//
//        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userMovie.getUserId(), userMovie.getMovieId());
//        boolean updateWatchlist = userMovie.isWatchlist() != null && userMovie.isWatchlist();
//        boolean updateFavorites = userMovie.isFavorite() != null && userMovie.isFavorite();
//        if(results.next()) {
//            if(updateWatchlist) {
//                String sqlUpdate = "UPDATE user_movies SET watchlist = ? WHERE user_id = ? AND movie_id =?;";
//                jdbcTemplate.update(sqlUpdate, userMovie.isWatchlist(), userMovie.getUserId(), userMovie.getMovieId());
//            }
//            if(updateFavorites) {
//                String sqlUpdate2 = "UPDATE user_movies SET favorite = ? WHERE user_id = ? AND movie_id =?;";
//                jdbcTemplate.update(sqlUpdate2, userMovie.isFavorite(), userMovie.getUserId(), userMovie.getMovieId());
//            }
//        } else {
//            if (updateWatchlist) {
//                String sql2 = "INSERT into user_movies(user_id, movie_id, watchlist) VALUES(?, ?, ?);";
//                jdbcTemplate.update(sql2, userMovie.getUserId(), userMovie.getMovieId(), userMovie.isWatchlist());
//            }
//            if (updateFavorites) {
//                String sql3 = "INSERT into user_movies(user_id, movie_id, favorite) VALUES(?, ?, ?);";
//                jdbcTemplate.update(sql3, userMovie.getUserId(), userMovie.getMovieId(), userMovie.isFavorite());
//            }
//        }
//
//    }

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
        String sql = "SELECT * FROM movies JOIN user_movies ON movies.id = user_movies.movie_id WHERE user_movies.user_id = ? AND watchlist = true";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        List<Movie> watchlist = new ArrayList<>();
        while (results.next()) {
            final Movie movie = JdbcMovieDao.mapRowToMovie(results);
            watchlist.add(movie);
        }

        return watchlist;

    }
}
