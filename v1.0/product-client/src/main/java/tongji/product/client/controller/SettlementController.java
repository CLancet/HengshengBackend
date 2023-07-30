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
        Date nowDate = settlementDTO.getNowDate();
        nowDate.setTime(nowDate.getTime() + 8 * 60 * 60 * 1000);
        return nowDate;
    }

    @RequestMapping(value = "/getYesterday", method = RequestMethod.GET)
    Date getYesterday(){
        Date nowDate = settlementDTO.getPreDate();
        nowDate.setTime(nowDate.getTime() + 8 * 60 * 60 * 1000);
        return nowDate;
    }

    @RequestMapping(value = "/getPreYesterday", method = RequestMethod.GET)
    Date getPreYesterday(){
        Date nowDate = settlementDTO.getTheDayBeforePreDate();
        nowDate.setTime(nowDate.getTime() + 8 * 60 * 60 * 1000);
        return nowDate;
    }

    @RequestMapping(value = "/updateDailyValue",method = RequestMethod.GET)
    String updateDailyValue(){
        return dailyValueService.updateAllDailyValue(settlementDTO.getPreDate(),settlementDTO.getTheDayBeforePreDate());
    }

    
}
