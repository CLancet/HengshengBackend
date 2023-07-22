package tongji.product.api;
import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.ProductDTO;

@CloudService(validationNull = true, validation = true)
public interface ProductService {
    @CloudFunction("333000")
    String createProduct(ProductDTO Product);

    @CloudFunction("333001")
    ProductDTO getProduct(String userId);

    @CloudFunction("333002")
    String modifyProduct(ProductDTO Product);
}
