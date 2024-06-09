package pl.coderslab.basket.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.awt.print.Book;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Long> {
        public Product findProductById(Long id);
        @Query("select p from Product p")
        public List<Product> findProducts();

}
