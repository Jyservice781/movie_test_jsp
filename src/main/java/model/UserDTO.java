package model;

import lombok.Data;

@Data
public class UserDTO {
    // id = pk
    private int id;
    // userId -> 중복 안됨
    private String userId;
    private String password;
    // 관리자, 평론가, 일반인 기준되는것
    private int userRank;
    // 평점때 쓸거
    private String nickName;


}
