package tongji.product.api;


import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.DailyValueDTO;

import java.sql.Date;

@CloudService(validationNull = true, validation = true)
public interface DailyValueService {

    @CloudFunction("0502")
    String createDailyValue(DailyValueDTO dailyValue);

    @CloudFunction("05010")
    String updateDailyValue(DailyValueDTO dailyValue);

    @CloudFunction("05011")
    DailyValueDTO getDailyValue(String fundNumber/*, Date date*/);


}
