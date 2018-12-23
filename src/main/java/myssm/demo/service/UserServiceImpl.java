package myssm.demo.service;

import myssm.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myssm.demo.mapper.UserMapper;

@Service()
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User findById(int id){
        return userMapper.findById(id);
    }

    @Override
    public  int addUser(String nickname, String pwd,String addtime){
        return userMapper.addUser(nickname,pwd,addtime);
    }

    @Override
    public  User findByNickname(String nickname){
        return userMapper.findByNickname(nickname);
    }

    @Override
    public User findUser(String nickname,String pwd){
        return userMapper.findUser(nickname,pwd);
    }
}
