package tongji.product.server.impl;


import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.mysql.cj.exceptions.DataTruncationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import tongji.product.api.DailyValueService;
import tongji.product.api.ProductService;
import tongji.product.api.pojo.DailyValueDTO;
import tongji.product.api.pojo.ProductDTO;
import tongji.product.api.pojo.SubscriptionDTO;
import tongji.product.server.mapper.DailyValueMapper;
import tongji.product.server.mapper.ProductMapper;

import java.util.Date;
import java.util.List;

@CloudComponent
public class DailyValueServiceImpl implements DailyValueService {
    @Autowired

    private DailyValueMapper dailyValueMapper;

    @Autowired
    private ProductMapper productMapper;

    public String createDailyValue(DailyValueDTO dailyValue){
        DailyValueDTO existDailyValue = dailyValueMapper.getOneDailyValue(dailyValue.getFundNumber(), dailyValue.getFundDate());
        if(existDailyValue == null){
            dailyValueMapper.createDailyValue(dailyValue);
            return dailyValue.getFundNumber();
        }
        throw new IllegalArgumentException("已存在相同的基金代码和日期的日净值");
    }

    public String updateDailyValue(DailyValueDTO dailyValue){
        DailyValueDTO existDailyValue = dailyValueMapper.getOneDailyValue(dailyValue.getFundNumber(), dailyValue.getFundDate());
        if(existDailyValue == null){ throw new IllegalArgumentException("不存在相同的基金代码和日期的日净值"); }
        dailyValueMapper.updateDailyValue(dailyValue);
        return dailyValue.getFundNumber();
    }

    public List<DailyValueDTO> getDailyValue(String fundNumber/*, Date date*/){
        Assert.hasLength(fundNumber, "缺少查询的基金代码");
        /*Assert.hasLength(String.valueOf(date), "缺少查询的日期");*/
        return dailyValueMapper.getDailyValue(fundNumber/*, date*/);
    }

    public DailyValueDTO getOneDailyValue(String fundNumber, Date fundDate) {
        Assert.hasLength(fundNumber, "缺少查询的基金代码");
        Assert.hasLength(String.valueOf(fundDate), "缺少查询的日期");
        return dailyValueMapper.getOneDailyValue(fundNumber, fundDate);
    }

    public  String updateAllDailyValue(Date currentDate,Date lastDate){
        List<ProductDTO> products = productMapper.getAllProduct();
        for(ProductDTO product :products){
            DailyValueDTO dailyValue = new DailyValueDTO();
            String fundNumber = product.getFundNumber();
            DailyValueDTO lastDailyValue = dailyValueMapper.getOneDailyValue(fundNumber,lastDate);
            Float lastValue;
            if(lastDailyValue ==null){
               lastValue = 1.0f;
            }
            else{
                lastValue = lastDailyValue.getFundValue();
            }
            Double num = 0.9 + Math.random() * 0.2;
            Float newFundValue =lastValue *num.floatValue();
            dailyValue.setFundValue(newFundValue);
            dailyValue.setFundNumber(fundNumber);
            dailyValue.setFundDate(currentDate);
            dailyValueMapper.createDailyValue(dailyValue);
        }
        return "完成日净值更新";
    }

}
