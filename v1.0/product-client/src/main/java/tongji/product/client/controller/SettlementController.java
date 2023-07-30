package tongji.product.client.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tongji.product.api.pojo.SettlementDTO;

import java.util.Date;

@CrossOrigin(origins = "http://localhost:8000")
@RestController
public class SettlementController {
    private SettlementDTO settlementDTO = new SettlementDTO();

    @RequestMapping(value = "/updateTime", method = RequestMethod.GET)
    String updateSystemTime(){
        settlementDTO.moveToNextDay();
        return "OK";
    }

    @RequestMapping(value = "/getTime", method = RequestMethod.GET)
    Date getNowDate(){
        return settlementDTO.getNowDate();
    }
}
