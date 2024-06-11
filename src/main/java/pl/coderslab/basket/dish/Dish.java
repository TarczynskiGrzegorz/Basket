package pl.coderslab.basket.dish;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.basket.ingredient.Ingredient;
import pl.coderslab.basket.user.User;

import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
public class Dish {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true, length = 60)
    private String name;

    private String description;

    @ManyToOne
    private User user;

    @OneToMany(cascade = CascadeType.REMOVE)
    private List<Ingredient> ingredients = new ArrayList<>();



    public void addIngredient(Ingredient ingredient) {
        ingredients.add(ingredient);
    }
}
