package tongji.product.client.controller;


import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tongji.product.api.DailyValueService;
import tongji.product.api.pojo.SettlementDTO;


import java.util.Date;
@CrossOrigin(origins = "http://localhost:8000")
@RestController
public class SettlementController {
    private final SettlementDTO settlementDTO = new SettlementDTO();

    @CloudReference
    DailyValueService dailyValueService;

    @RequestMapping(value = "/updateTime", method = RequestMethod.GET)
    String updateSystemTime(){
        settlementDTO.moveToNextDay();
        return "OK";
    }


    @RequestMapping(value = "/getTime", method = RequestMethod.GET)
    Date getNowDate() {
        return settlementDTO.getNowDate();
    }

    @RequestMapping(value = "/getYesterday", method = RequestMethod.GET)
    Date getYesterday(){
        return settlementDTO.getPreDate();
    }

    @RequestMapping(value = "/getPreYesterday", method = RequestMethod.GET)
    Date getPreYesterday(){
        return settlementDTO.getTheDayBeforePreDate();
    }

    @RequestMapping(value = "/updateDailyValue",method = RequestMethod.GET)
    String updateDailyValue(){
        return dailyValueService.updateAllDailyValue(settlementDTO.getPreDate(),settlementDTO.getTheDayBeforePreDate());
    }

    
}
