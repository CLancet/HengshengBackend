package tongji.product.server.impl;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import org.springframework.beans.factory.annotation.Autowired;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.ProductDTO;
import tongji.product.server.mapper.ProductMapper;

public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    public String createProduct(ProductDTO Product) {
        ProductDTO existProduct = productMapper.getProduct(Product.getFundNumber());
        if(null == existProduct){
            productMapper.createProduct(Product);
            return Product.getFundNumber();
        }
        productMapper.updateProduct(Product);
        return Product.getFundNumber();
    }

    public ProductDTO getProduct(String fundNumber) {
        return productMapper.getProduct(fundNumber);
    }

    public String modifyProduct(ProductDTO Product) {
        ProductDTO existProduct = productMapper.getProduct(Product.getFundNumber());
        if(null == existProduct){
            //productMapper.createProduct(Product);
            return Product.getFundNumber();
        }
        productMapper.updateProduct(Product);
        return Product.getFundNumber();
    }
}
