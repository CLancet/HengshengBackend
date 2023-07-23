package tongji.product.api;
import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.ProductDTO;

@CloudService(validationNull = true, validation = true)
public interface ProductService {
    @CloudFunction("333001")
    String createProduct(ProductDTO Product);

    @CloudFunction("333000")
    ProductDTO getProduct(String fundNumber);

    @CloudFunction("333002")
    String modifyProduct(ProductDTO Product);
}
