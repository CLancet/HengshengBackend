package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.ProductDTO;

public class ClientController {

    @CloudReference
    private ProductService productService;

    @RequestMapping(value = "/createProduct", method = RequestMethod.GET)
    public String createProduct(@RequestParam(value = "fund_number", required = false) String fundNumber,
                                @RequestParam(value = "fund_name") String fundName,
                                @RequestParam(value = "fund_type", required = false) String fundType,
                                @RequestParam(value = "fund_risk",required = false )int fundRisk){

        ProductDTO product = new ProductDTO();
        product.setFundNumber(fundNumber);
        product.setFundName(fundName);
        product.setFundType(fundType);
        product.setFundRisk(fundRisk);
        return productService.createProduct(product);
    }
    @RequestMapping(value = "/getProduct", method = RequestMethod.GET)
    public ProductDTO getProduct(@RequestParam(value = "fund_number") String fundNumber){
        return productService.getProduct(fundNumber);
    }

    @RequestMapping(value = "/modifyProduct", method = RequestMethod.POST)
    public String modifyProduct(@RequestBody ProductDTO product){
        return productService.modifyProduct(product);
    }
}
