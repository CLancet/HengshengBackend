package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import org.apache.kafka.common.protocol.types.Field;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.web.bind.annotation.*;
//<<<<<<< Updated upstream
import tongji.product.api.BankCardService;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.BankCardDTO;
import tongji.product.api.pojo.ProductDTO;

import java.util.List;
//=======
import tongji.product.api.DailyValueService;
import tongji.product.api.InvesterService;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.DailyValueDTO;
import tongji.product.api.pojo.InvesterDTO;
import tongji.product.api.pojo.ProductDTO;

import java.sql.Date;
import java.text.SimpleDateFormat;
//>>>>>>> Stashed changes

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

//<<<<<<< Updated upstream
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
                                 @RequestParam(value = "balance") float balance) {
        BankCardDTO card = new BankCardDTO();
        card.setBalance(balance);
        card.setBankName(bankName);
        card.setCardNumber(cardNumber);
        card.setCerNumber(cerNumber);
        return bankCardService.modifyBankCard(card);
    }
//=======
    @CloudReference
    private InvesterService investerService;

    @RequestMapping(value = "/createInvester",method = RequestMethod.GET)
    public String createInvester(@RequestParam(value = "user_type") String userType,
                                 @RequestParam(value = "user_name") String userName,
                                 @RequestParam(value = "cer_type") String cerType,
                                 @RequestParam(value = "cer_number")String cerNumber,
                                 @RequestParam(value = "risk_grade",required = false )int riskGrade){
        InvesterDTO invester = new InvesterDTO();
        invester.setCerNumber(cerNumber);
        invester.setUserType(userType);
        invester.setUserName(userName);
        invester.setCerType(cerType);
        invester.setRiskGrade(riskGrade);
        return investerService.createInvester(invester);

    }
    @RequestMapping(path = "/getInvester", method = RequestMethod.GET)
    public InvesterDTO getInvester(@RequestParam(value = "cer_number")String cerNumber){
        return investerService.getInvester(cerNumber);
    }

    @CloudReference
    private DailyValueService dailyValueService;
    @RequestMapping(value = "/createDailyValue",method = RequestMethod.POST)
    public String createDailyValue(@RequestParam(value = "fund_number") String fundNumber,
                                   @RequestParam(value = "value") float value,
                                   @RequestParam(value = "date") String date) {
        DailyValueDTO dailyValue = new DailyValueDTO();
        dailyValue.setFundNumber(fundNumber);
        dailyValue.setValue(value);
        if (date.matches("\\d{4}-\\d{2}-\\d{2}")) {
            // Try to parse the String value into a java.sql.Date object using the valueOf() method
            try {
                java.sql.Date fundDate = java.sql.Date.valueOf(date);
                // Do something with the sqlDate object
                dailyValue.setDate(fundDate);
            } catch (IllegalArgumentException e) {
                // Handle the exception if the date value is invalid
                e.printStackTrace();
            }
        }
        //java.sql.Date fundDate = java.sql.Date.valueOf(date);

        return dailyValueService.createDailyValue(dailyValue);
    }
    @RequestMapping(path = "/updateDailyValue", method = RequestMethod.GET)
    public String updateDailyValue(@RequestParam(value = "fund_number") String fundNumber,
                                   @RequestParam(value = "value") float value,
                                   @RequestParam(value = "date") Date date){
        DailyValueDTO dailyValue = new DailyValueDTO();
        dailyValue.setFundNumber(fundNumber);
        dailyValue.setValue(value);
        dailyValue.setDate(date);
        return dailyValueService.updateDailyValue(dailyValue);
    }

    @RequestMapping(path = "/getDailyValue", method = RequestMethod.GET)
    public DailyValueDTO getDailyValue(@RequestParam(value = "fund_number") String fundNumber
                                       /*@RequestParam(value = "date") Date date*/){
        return dailyValueService.getDailyValue(fundNumber/*, date*/);
//>>>>>>> Stashed changes
    }
}
