package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import com.sun.xml.internal.ws.fault.ServerSOAPFaultException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
//<<<<<<< Updated upstream
import tongji.product.api.*;
import tongji.product.api.pojo.*;

import java.util.List;
//=======
import tongji.product.api.pojo.ProductDTO;

import java.sql.Date;
//>>>>>>> Stashed changes

@RestController
public class ClientController {

    @CloudReference
    private ProductService productService;

    @CloudReference
    private BankCardService bankCardService;

    @CloudReference
    private DailyValueService dailyValueService;

    @CloudReference
    private InvesterService investerService;


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

    @RequestMapping(value = "/modifyProduct", method = RequestMethod.PATCH)
    public String modifyProduct(@RequestParam(value = "fund_number", required = false) String fundNumber,
                                @RequestParam(value = "fund_name") String fundName,
                                @RequestParam(value = "fund_type", required = false) String fundType,
                                @RequestParam(value = "fund_risk",required = false )int fundRisk){
        ProductDTO product = new ProductDTO();
        product.setFundNumber(fundNumber);
        product.setFundName(fundName);
        product.setFundType(fundType);
        product.setFundRisk(fundRisk);
        return productService.modifyProduct(product);
    }

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

    @RequestMapping(path = "/getInvester/all", method = RequestMethod.GET)
    public List<InvesterDTO> getAllInvester(){
        return investerService.getAllInvester();
    }



    @RequestMapping(value = "/createDailyValue",method = RequestMethod.POST)
    public String createDailyValue(@RequestParam(value = "fund_number") String fundNumber,
                                   @RequestParam(value = "fund_value") float fundValue,
                                   @RequestParam(value = "fund_date") java.sql.Date fundDate) {
        DailyValueDTO dailyValue = new DailyValueDTO();
        dailyValue.setFundNumber(fundNumber);
        dailyValue.setFundValue(fundValue);
        dailyValue.setFundDate(fundDate);
        return dailyValueService.createDailyValue(dailyValue);
    }
    @RequestMapping(path = "/updateDailyValue", method = RequestMethod.GET)
    public String updateDailyValue(@RequestParam(value = "fund_number") String fundNumber,
                                   @RequestParam(value = "fund_value") float fundValue,
                                   @RequestParam(value = "fund_date") Date fundDate){
        DailyValueDTO dailyValue = new DailyValueDTO();
        dailyValue.setFundNumber(fundNumber);
        dailyValue.setFundValue(fundValue);
        dailyValue.setFundDate(fundDate);
        return dailyValueService.updateDailyValue(dailyValue);
    }

    @RequestMapping(path = "/getDailyValue", method = RequestMethod.GET)
    public List<DailyValueDTO> getDailyValue(@RequestParam(value = "fund_number") String fundNumber
                                       /*@RequestParam(value = "date") Date date*/){
        return dailyValueService.getDailyValue(fundNumber/*, date*/);
    }

}

// 这是一个测试
