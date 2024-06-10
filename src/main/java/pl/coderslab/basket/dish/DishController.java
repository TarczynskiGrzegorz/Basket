package pl.coderslab.basket.dish;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.basket.ingredient.Ingredient;
import pl.coderslab.basket.ingredient.IngredientRepository;
import pl.coderslab.basket.product.Product;
import pl.coderslab.basket.product.ProductRepository;
import pl.coderslab.basket.unit.Unit;
import pl.coderslab.basket.user.UserRepository;

import java.util.List;
import java.util.Optional;

@Controller
public class DishController {
    private final UserRepository userRepository;
    private final DishRepository dishRepository;
    private final ProductRepository productRepository;
    private final IngredientRepository ingredientRepository;

    public DishController(UserRepository userRepository, DishRepository dishRepository,ProductRepository productRepository,IngredientRepository ingredientRepository){
        this.userRepository=userRepository;
        this.dishRepository=dishRepository;
        this.productRepository=productRepository;
        this.ingredientRepository=ingredientRepository;
    }

    @GetMapping("dish/add")
    public String showForm(Model model, @AuthenticationPrincipal UserDetails user){
        Dish dish = new Dish();
        model.addAttribute("dish", dish);
        return "/dish/form";
    }

    @PostMapping("dish/add")
    public String saveDish(Dish dish, Model model, @AuthenticationPrincipal UserDetails user){
        dish.setUser(userRepository.findByUsername(user.getUsername()));
        dishRepository.save(dish);
        model.addAttribute("dish", dish);
        return "redirect:/dish/addToDish/"+dish.getId();
    }

    @GetMapping("/dish/addToDish/{ids}")
    public String showFormForIngredient(@PathVariable long ids,Model model){
        Ingredient ingredient = new Ingredient();
        model.addAttribute("ingredient",ingredient);
        model.addAttribute("ingredients", dishRepository.findById(ids).get().getIngredients());
        return "/ingredient/form";
    }

    @PostMapping("/dish/addToDish/{ids}")
    public String addIngredientToDish(@PathVariable long ids, Ingredient ingredient, Model model){
        Optional<Dish> dishOptional =dishRepository.findById(ids);
      if(dishOptional.isPresent()){
          ingredientRepository.save(ingredient);
          Dish dish =dishOptional.get();
          dish.addIngredient(ingredient);
          dishRepository.save(dish);
          return "redirect:/dish/addToDish/"+ids;
      }else{
            return "/dashboard";
      }
    }

    @ModelAttribute("products")
    public List<Product> checkProduct() {
        return productRepository.findProducts();
    }

}
