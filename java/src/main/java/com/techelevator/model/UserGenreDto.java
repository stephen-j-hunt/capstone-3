package com.techelevator.model;

public class UserGenreDto {

    private int userId;
    private int genreId;

    public UserGenreDto() {}

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getGenreId() {
        return genreId;
    }

    public void setGenreId(int genreId) {
        this.genreId = genreId;
    }
}
