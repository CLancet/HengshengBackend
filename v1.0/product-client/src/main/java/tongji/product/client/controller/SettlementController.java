package tongji.product.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tongji.product.api.DailyValueService;
import tongji.product.api.pojo.SettlementDTO;

@CrossOrigin(origins = "http://localhost:8000")
@RestController
public class SettlementController {
    private SettlementDTO settlementDTO = new SettlementDTO();

    @CloudReference
    DailyValueService dailyValueService;

    @RequestMapping(value = "/updateTime", method = RequestMethod.GET)
    String updateSystemTime(){
        settlementDTO.moveToNextDay();
        return "OK";
    }

    @RequestMapping(value = "/updateDailyValue",method = RequestMethod.GET)
    String updateDailyValue(){
        return dailyValueService.updateAllDailyValue(settlementDTO.getNowDate(),settlementDTO.getPreDate());
    }
}
