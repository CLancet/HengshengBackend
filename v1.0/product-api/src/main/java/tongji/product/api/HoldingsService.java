package tongji.product.api;

import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.HoldingsDTO;

@CloudService(validationNull = true, validation = true)
public interface HoldingsService {
    @CloudFunction("060101")
    String createInvestorHoldings(HoldingsDTO investorHoldings);

    @CloudFunction("060201")
    String updateInvestorHoldings(HoldingsDTO investorHoldings);

    @CloudFunction("060301")
    HoldingsDTO getInvestorHoldings(String fundNumber, String cerNumber, String cardNumber);

}
