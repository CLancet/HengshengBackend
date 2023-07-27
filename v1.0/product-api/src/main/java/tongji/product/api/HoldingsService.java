package tongji.product.api;

import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import org.apache.kafka.common.protocol.types.Field;
import tongji.product.api.pojo.HoldingsDTO;

@CloudService(validationNull = true, validation = true)
public interface HoldingsService {
    @CloudFunction("060101")
    String createInvestorHoldings(HoldingsDTO investorHoldings);

    @CloudFunction("060201")
    String updateInvestorHoldings(HoldingsDTO investorHoldings);

    @CloudFunction("060301")
    HoldingsDTO getInvestorHoldings(String fundNumber, String cerNumber, String cardNumber);

    @CloudFunction("060401")
    int deleteInvestorHoldings();

    @CloudFunction("060501")
    String checkHoldings(HoldingsDTO holdings);
}
