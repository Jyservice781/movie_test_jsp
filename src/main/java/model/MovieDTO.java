package model;

import lombok.Data;

import java.util.Date;

@Data
public class MovieDTO {
    private int movieId;
    private String movieTitle;
    private String movieImage;
    private String movieRank;
    private String movieSummery;
//    private Date movieReleaseDate;
}
