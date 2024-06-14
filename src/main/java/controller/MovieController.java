package controller;

import connecter.MysqlConnector;
import model.MovieDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieController {
    private Connection connection;

    public MovieController(MysqlConnector connector){
        connection = connector.makeConnection();
    }

    public String[] menu = {
            "전체 관람가",
            "6세 관람가",
            "12세 관람가",
            "15세 관람가",
            "19세 관람가"
    };

    public ArrayList<MovieDTO> insert(MovieDTO movieDTO){
        ArrayList<MovieDTO> list = new ArrayList<>();
        String query = "INSERT INTO movie(movieId, movieTitle, movieRank, movieSummery, movieImage)VALUE(?,?,?,?,?)";

        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, movieDTO.getMovieId());
            preparedStatement.setString(2, movieDTO.getMovieTitle());
            preparedStatement.setString(3, movieDTO.getMovieRank());
            preparedStatement.setString(4, movieDTO.getMovieSummery());
            preparedStatement.setString(5, movieDTO.getMovieImage());

            preparedStatement.executeUpdate();
            list.add(movieDTO);
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    // 관리자용 - 영화정보 수정하기
    public void update(int id){
        String query = "UPDATE movie(movieId, movieTitle, movieRank, movieSummery, movieImage) SET (?,?,?,?,?)";
        try {
            MovieDTO movieDTO = new MovieDTO();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, movieDTO.getMovieId());
            preparedStatement.setString(2, movieDTO.getMovieTitle());
            preparedStatement.setString(3, movieDTO.getMovieRank());
            preparedStatement.setString(4, movieDTO.getMovieSummery());
            preparedStatement.setString(5, movieDTO.getMovieImage());
            // 날짜 가져오기
            // preparedStatement.setTimestamp(6, movieDTO.getMovieReleaseDate());

            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    // 관리자용 - 영화 삭제하기
    public void delete(int id){
        String query = "DELETE FROM movie WHERE id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    //영화 리스트 받아오기
    public ArrayList<MovieDTO> selectAll(){
        ArrayList<MovieDTO> list = new ArrayList<>();
        String query = "SELECT * FROM movie";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                MovieDTO m = new MovieDTO();
                m.setMovieId(resultSet.getInt("movieId"));
                m.setMovieTitle(resultSet.getString("movieTitle"));;
                m.setMovieRank(resultSet.getString("movieRank"));
                m.setMovieSummery(resultSet.getString("movieSummery"));
                m.setMovieImage(resultSet.getString("movieImage"));
//                m.setMovieReleaseDate(resultSet.getDate("movieReleaseDate"));

                list.add(m);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    public MovieDTO selectOne(int id){
        String query = "SELECT * FROM movie WHERE movieId = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                MovieDTO m = new MovieDTO();
                m.setMovieId(resultSet.getInt("movieId"));
                m.setMovieTitle(resultSet.getString("movieTitle"));
                m.setMovieRank(resultSet.getString("movieRank"));
                m.setMovieSummery(resultSet.getString("movieSummery"));
                m.setMovieImage(resultSet.getString("movieImage"));

                return m;
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}