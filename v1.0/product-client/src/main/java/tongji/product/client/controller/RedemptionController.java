package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tongji.product.api.RedemptionService;
import tongji.product.api.pojo.RedemptionDTO;

import java.sql.Date;
import java.util.List;

@RestController
public class RedemptionController {
    @CloudReference
    private RedemptionService redemptionService;

    @RequestMapping(value = "/createRedemption", method = RequestMethod.GET)
    public String createRedemption(@RequestParam(value = "red_state", required = false) String redState,
                                   @RequestParam(value = "fund_number", required = true) String fundNumber,
                                   @RequestParam(value = "cer_number", required = true) String cerNumber,
                                   @RequestParam(value = "red_amount", required = true) float redAmount,
                                   /*@RequestParam(value = "red_date", required = true) Date redDate,*/
                                   @RequestParam(value = "red_share", required = true) int redShare,
                                   @RequestParam(value = "red_card_number", required = true) String redCardNumber) {
        RedemptionDTO redemption = new RedemptionDTO();
        redemption.setRedState((redState == null? "待确认":redState));
        redemption.setFundNumber(fundNumber);
        redemption.setCerNumber(cerNumber);
        redemption.setRedAmount(redAmount);
        java.util.Date redDate = new java.util.Date();
        redemption.setRedDate(redDate);
        redemption.setRedShare(redShare);
        redemption.setRedCardNumber(redCardNumber);
        return redemptionService.createRedemption(redemption);
    }

    @RequestMapping(value = "/deleteRedemption", method = RequestMethod.GET)
    public String deleteRedemption(@RequestParam(value = "red_state", required = true) String redState,
                                   @RequestParam(value = "fund_number", required = true) String fundNumber,
                                   @RequestParam(value = "cer_number", required = true) String cerNumber,
                                   @RequestParam(value = "red_amount", required = true) float redAmount,
                                   /*@RequestParam(value = "red_date", required = true) Date redDate,*/
                                   @RequestParam(value = "red_share", required = true) int redShare,
                                   @RequestParam(value = "red_card_number", required = true) String redCardNumber){
        RedemptionDTO redemption = new RedemptionDTO();
        redemption.setRedState(redState);
        redemption.setFundNumber(fundNumber);
        redemption.setCerNumber(cerNumber);
        redemption.setRedAmount(redAmount);
        /*redemption.setRedDate(redDate);*/
        redemption.setRedShare(redShare);
        redemption.setRedCardNumber(redCardNumber);
        return redemptionService.deleteRedemption(redemption);
    }

    @RequestMapping(value = "/getRedemption/all", method = RequestMethod.GET)
    public List<RedemptionDTO> getRedemption(@RequestParam(value = "cer_number") String cerNumber){
        return redemptionService.getRedemption(cerNumber);
    }

    @RequestMapping(value = "/getRedemption/one", method = RequestMethod.GET)
    public RedemptionDTO getOneRedemption(@RequestParam(value = "cer_number") String cerNumber,
                                          @RequestParam(value = "fund_number") String fundNumber,
                                          @RequestParam(value = "red_card_number") String redCardNumber){
        return redemptionService.getOneRedemption(cerNumber, fundNumber, redCardNumber);
    }


}