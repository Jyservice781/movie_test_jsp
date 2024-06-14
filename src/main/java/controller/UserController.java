package controller;

import connecter.MysqlConnector;
import model.UserDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserController {
    private Connection connection;
    // connection 자바라이브러리 연동해주기
    public UserController(MysqlConnector connector){
        connection = connector.makeConnection();
    }

    //만약 관리자가 로그인을 한 경우,
    public UserDTO admin(int rank){
        UserDTO userDTO = new UserDTO();

        return userDTO;
    }
    // mysql 이랑 userController 랑 연결
    // 로그인
    public UserDTO logIn(UserDTO userDTO){
        UserDTO result = null;
        String query = "SELECT * FROM user WHERE userId = ? AND password = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userDTO.getUserId());
            preparedStatement.setString(2, userDTO.getPassword());

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                result = new UserDTO();
                result.setId(resultSet.getInt("id"));
                result.setUserId(resultSet.getString("userId"));
                result.setPassword(resultSet.getString("password"));
                result.setNickName(resultSet.getString("nickName"));
                result.setUserRank(resultSet.getInt("userRank"));
            }

        } catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
    // 회원가입
    public boolean register(UserDTO userDTO){
        String query = "INSERT INTO User(userId, password, nickName) VALUES (?, ?, ?)";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userDTO.getUserId());
            preparedStatement.setString(2, userDTO.getPassword());
            preparedStatement.setString(3, userDTO.getNickName());

            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //list 로 보기
    public ArrayList<UserDTO> selectAll(){
        ArrayList<UserDTO> list = new ArrayList<>();
        String query = "SELECT * FROM User";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                UserDTO userDTO = new UserDTO();
                userDTO.setId(resultSet.getInt("id"));
                userDTO.setUserId(resultSet.getString("userId"));
                userDTO.setPassword(resultSet.getString("password"));
                userDTO.setNickName(resultSet.getString("nickName"));
                userDTO.setUserRank(resultSet.getInt("userRank"));

                list.add(userDTO);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return list;
    }
    // 유저등급수정하기 - 관리자용
    public void updateRankAdmin(int id, int userRank){
        String query = "UPDATE User SET userRank = ? WHERE id = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, userRank);
            preparedStatement.setInt(2, id);

            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }



    // 수정하기 - 일반회원
    public UserDTO update(UserDTO userDTO){
        UserDTO temp = new UserDTO();
        String query = "UPDATE User(userId, password, nickName) SET (?,?,?)";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, temp.getUserId());
            preparedStatement.setString(2, temp.getPassword());
            preparedStatement.setString(3, temp.getNickName());

            preparedStatement.executeUpdate();

        } catch (SQLException e){
            e.printStackTrace();
        }
        return temp;
    }

    // 삭제하기
    public void delete(int id){
        String query = "DELETE FROM User WHERE id = ?";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
