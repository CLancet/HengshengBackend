package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tongji.product.api.RiskTraceService;
import tongji.product.api.pojo.RiskTraceDTO;

import java.util.Date;

@RestController
public class RiskTraceController {
    @CloudReference
    private RiskTraceService riskTraceService;

    @RequestMapping(value = "/createRiskTrace", method = RequestMethod.GET)
    public String createRiskTrace(@RequestParam(value = "fund_number", required = true) String fundNumber,
                           @RequestParam(value = "cer_number",  required = true) String cerNumber
                           /*@RequestParam(value = "red_date",    required = true) Date date*/){
        RiskTraceDTO riskTrace = new RiskTraceDTO();
        riskTrace.setCerNumber(cerNumber);
        riskTrace.setFundNumber(fundNumber);
        Date nowDate = new Date();
        riskTrace.setRedDate(nowDate);
        return riskTraceService.createRiskTrace(riskTrace);
    }
}
