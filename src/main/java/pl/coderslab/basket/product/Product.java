package pl.coderslab.basket.product;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.basket.unit.Unit;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, unique = true, length = 60)
    private String name;
    @ManyToOne
    @JoinColumn
    private Unit unit;

}
