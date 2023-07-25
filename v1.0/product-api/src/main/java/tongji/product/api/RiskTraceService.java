package tongji.product.api;

import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.RiskTraceDTO;

@CloudService(validationNull = true, validation = true)
public interface RiskTraceService {
    @CloudFunction("030201")
    String createRiskTrace(RiskTraceDTO riskTrace);
}
