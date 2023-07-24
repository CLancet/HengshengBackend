package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.web.bind.annotation.*;
import tongji.product.api.BankCardService;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.BankCardDTO;
import tongji.product.api.pojo.ProductDTO;

import java.util.List;

@RestController
public class ClientController {

    @CloudReference
    private ProductService productService;

    @CloudReference
    private BankCardService bankCardService;

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
    @RequestMapping(path = "/getProduct", method = RequestMethod.GET)
    public ProductDTO getProduct(@RequestParam(value = "fund_number") String fundNumber){
        return productService.getProduct(fundNumber);
    }

//    @RequestMapping(value = "/modifyProduct", method = RequestMethod.POST)
//    public String modifyProduct(@RequestBody ProductDTO product){
//        return productService.modifyProduct(product);
//    }

//    @RequestMapping(value = "/sayHello",method = RequestMethod.GET)
//    public String sayHello(){
//        return "hello postman";
//    }

    @RequestMapping(path = "/getBankCard/all", method = RequestMethod.GET)
    public List<BankCardDTO> getBankCard(@RequestParam(value = "cer_number") String cerNumber){
        return bankCardService.getBankCard(cerNumber);
    }

    @RequestMapping(path = "/getBankCard/one", method = RequestMethod.GET)
    public BankCardDTO getOneBankCard(@RequestParam(value = "card_number") String cardNumber,
                                      @RequestParam(value = "cer_number") String cerNumber){
        return bankCardService.getOneBankCard(cardNumber, cerNumber);
    }

    @RequestMapping(path = "/addBankCard", method = RequestMethod.GET)
    public String addBankCard(@RequestParam(value = "card_number") String cardNumber,
                              @RequestParam(value = "cer_number") String cerNumber,
                              @RequestParam(value = "bank_name") String bankName,
                              @RequestParam(value = "balance") float balance){
        BankCardDTO card = new BankCardDTO();
        card.setBalance(balance);
        card.setBankName(bankName);
        card.setCardNumber(cardNumber);
        card.setCerNumber(cerNumber);
        return bankCardService.addBankCard(card);
    }

    @RequestMapping(path = "/deleteBankCard", method = RequestMethod.GET)
    public String deleteBankCard(@RequestParam(value = "card_number") String cardNumber,
                                 @RequestParam(value = "cer_number") String cerNumber,
                                 @RequestParam(value = "bank_name") String bankName,
                                 @RequestParam(value = "balance") float balance){
        BankCardDTO card = new BankCardDTO();
        card.setBalance(balance);
        card.setBankName(bankName);
        card.setCardNumber(cardNumber);
        card.setCerNumber(cerNumber);
        return bankCardService.removeBankCard(card);
    }

    @RequestMapping(path = "/modifyBankCard", method = RequestMethod.GET)
    public String modifyBankCard(@RequestParam(value = "card_number") String cardNumber,
                                 @RequestParam(value = "cer_number") String cerNumber,
                                 @RequestParam(value = "bank_name") String bankName,
                                 @RequestParam(value = "balance") float balance){
        BankCardDTO card = new BankCardDTO();
        card.setBalance(balance);
        card.setBankName(bankName);
        card.setCardNumber(cardNumber);
        card.setCerNumber(cerNumber);
        return bankCardService.modifyBankCard(card);
    }

}
