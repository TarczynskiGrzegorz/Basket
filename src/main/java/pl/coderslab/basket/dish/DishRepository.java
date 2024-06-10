package pl.coderslab.basket.dish;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.basket.user.User;

import java.util.List;

public interface DishRepository extends JpaRepository<Dish,Long> {
    List<Dish> findDishByUser(User user);
}
