package cn.hjkilo.service;

import cn.hjkilo.pojo.User;

public interface UserService {

    User login(String username,String userpassword);

    void regist(User user);

    User isuser(String username);

    User getUserByPrimaryKey(int id);
}
