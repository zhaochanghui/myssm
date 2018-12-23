package myssm.demo.service;

import myssm.demo.model.User;

public interface UserService {
    User findById(int id);

    int addUser(String nickname, String pwd, String addtime);

    User findByNickname(String nickname);

    User findUser(String nickname,String pwd);

}
