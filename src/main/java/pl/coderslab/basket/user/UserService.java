package pl.coderslab.basket.user;

public interface UserService {
 
    User findByUserName(String name);
 
    void saveUser(User user);
}   