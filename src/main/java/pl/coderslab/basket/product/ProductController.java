package pl.coderslab.basket.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.basket.unit.Unit;
import pl.coderslab.basket.unit.UnitRepository;

import java.util.List;

@Controller
public class ProductController {
    private final UnitRepository unitRepository;
    private final ProductRepository productRepository;

    public ProductController(UnitRepository unitRepository, ProductRepository productRepository) {
        this.unitRepository = unitRepository;
        this.productRepository = productRepository;
    }

    @GetMapping("/product/get")
    public String showProducts() {
        return "/product/list";
    }

    @GetMapping("/product/add")
    public String showForm(Model model) {
        model.addAttribute("product", new Product());
        return "product/form";
    }

    @PostMapping("/product/add")
    public String addProduct(Product product, Model model) {
        productRepository.save(product);
        return "redirect:/product/get";
    }

    @ModelAttribute("units")
    public List<Unit> checkUnits() {
        return unitRepository.findUnits();
    }

    @ModelAttribute("products")
    public List<Product> checkProducts() {
        return productRepository.findProducts();
    }
}
