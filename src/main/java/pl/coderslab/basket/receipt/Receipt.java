package pl.coderslab.basket.receipt;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.basket.dish.Dish;
import pl.coderslab.basket.ingredient.Ingredient;
import pl.coderslab.basket.user.User;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
        Map<String,Integer> result = new HashMap<>();
     for(Dish d: dishes){
         for(Ingredient i: d.getIngredients()){
             if(result.containsKey(i.getProduct().getName()+" "+ i.getProduct().getUnit().getMeasure()+" : ")){
                 int tempValue = result.get(i.getProduct().getName()+" "+ i.getProduct().getUnit().getMeasure()+" : ");
                 int newValue = tempValue + i.getAmount();
                 result.put(i.getProduct().getName()+" "+ i.getProduct().getUnit().getMeasure()+" : ",newValue);
             }else{
                 result.put(i.getProduct().getName()+" "+ i.getProduct().getUnit().getMeasure()+" : ",i.getAmount());
             }
         }
     }
        return result;
    }
}
