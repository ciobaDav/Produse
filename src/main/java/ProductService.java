import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductService {

    private List<Product> productList;

    public ProductService(List<Product> productList) {
        this.productList = productList;
    }

    public List<Product> filterProductsByPrice(double minPrice) {
        return productList.stream()
                .filter(product -> product.getPrice() >= minPrice)
                .collect(Collectors.toList());
    }

    public List<Product> sortProductsByName() {
        return productList.stream()
                .sorted((p1, p2) -> p1.getName().compareTo(p2.getName()))
                .collect(Collectors.toList());
    }

    public Map<Integer, List<Product>> groupProductsByQuantity() {
        return productList.stream()
                .collect(Collectors.groupingBy(Product::getQuantity));
    }

    public int calculateTotalStock() {
        return productList.stream()
                .mapToInt(Product::getQuantity)
                .sum();
    }
    public Product findMostExpensiveProduct() {
        return productList.stream()
                .max((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()))
                .orElse(null);
    }
    public List<Product> getNonExpiredProducts() {
        return productList.stream()
                .filter(product -> product.getExpiryDate().isAfter(LocalDate.now()))
                .collect(Collectors.toList());
    }
}

