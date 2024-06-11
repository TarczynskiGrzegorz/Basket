package pl.coderslab.basket.receipt;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.basket.dish.Dish;
import pl.coderslab.basket.user.User;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Entity
@Getter
@Setter
public class Receipt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(optional=false)
    private User user;

    @OneToMany
    private List<Dish> dishes = new ArrayList<>();

    public void addDish(Dish dish) {
        dishes.add(dish);
    }

    public void removeDish(Dish dish) {
        dishes.remove(dish);
    }

    public Map<String, Integer> getProductList() {
        return null;
    }
}
