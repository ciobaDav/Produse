import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ProductListInitializer {

    public static List<Product> initializeProducts() {
        List<Product> products = new ArrayList<>();

        products.add(new Product("Laptop", 10, 999.99, true, LocalDate.of(2025, 12, 31)));
        products.add(new Product("Smartphone", 50, 499.99, true, LocalDate.of(2023, 11, 30)));
        products.add(new Product("Headphones", 100, 59.99, true, LocalDate.of(2024, 6, 30)));
        products.add(new Product("Keyboard", 75, 29.99, false, LocalDate.of(2024, 9, 15)));
        products.add(new Product("Mouse", 200, 19.99, true, LocalDate.of(2026, 1, 1)));

        return products;
    }
}

