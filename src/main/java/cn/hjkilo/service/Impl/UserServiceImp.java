package cn.hjkilo.service.Impl;

import cn.hjkilo.dao.UserMapper;
import cn.hjkilo.pojo.User;
import cn.hjkilo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String username, String userpassword) {

      return   userMapper.findUserByNameAndPwd(username, userpassword);
    }

    @Override
    public void regist(User user) {

        userMapper.insert(user);
    }

    @Override
    public User isuser(String username) {
     return  userMapper.findUserByName(username);
    }

    @Override
    public User getUserByPrimaryKey(int id) {
        return  userMapper.selectByPrimaryKey(id);
    }


}
