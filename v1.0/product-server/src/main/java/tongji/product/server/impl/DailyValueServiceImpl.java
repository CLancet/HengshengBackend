package tongji.product.server.impl;


import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import tongji.product.api.DailyValueService;
import tongji.product.api.pojo.DailyValueDTO;
import tongji.product.server.mapper.DailyValueMapper;

import java.util.Date;
import java.util.List;

@CloudComponent
public class DailyValueServiceImpl implements DailyValueService {
    @Autowired

    private DailyValueMapper dailyValueMapper;

    public String createDailyValue(DailyValueDTO dailyValue){
        DailyValueDTO existDailyValue = dailyValueMapper.getOneDailyValue(dailyValue.getFundNumber(), dailyValue.getDate());
        if(existDailyValue == null){
            dailyValueMapper.createDailyValue(dailyValue);
            return dailyValue.getFundNumber();
        }
        throw new IllegalArgumentException("已存在相同的基金代码和日期的日净值");
    }

    public String updateDailyValue(DailyValueDTO dailyValue){
        DailyValueDTO existDailyValue = dailyValueMapper.getOneDailyValue(dailyValue.getFundNumber(), dailyValue.getDate());
        if(existDailyValue == null){ throw new IllegalArgumentException("不存在相同的基金代码和日期的日净值"); }
        dailyValueMapper.updateDailyValue(dailyValue);
        return dailyValue.getFundNumber();
    }

    public List<DailyValueDTO> getDailyValue(String fundNumber/*, Date date*/){
        Assert.hasLength(fundNumber, "缺少查询的基金代码");
        /*Assert.hasLength(String.valueOf(date), "缺少查询的日期");*/
        return dailyValueMapper.getDailyValue(fundNumber/*, date*/);
    }

    public DailyValueDTO getOneDailyValue(String fundNumber, Date date) {
        Assert.hasLength(fundNumber, "缺少查询的基金代码");
        Assert.hasLength(String.valueOf(date), "缺少查询的日期");
        return dailyValueMapper.getOneDailyValue(fundNumber, date);
    }

}
