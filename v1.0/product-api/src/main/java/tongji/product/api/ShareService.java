package tongji.product.api;

import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.ShareDTO;

import java.util.List;

@CloudService(validationNull = true, validation = true)
public interface ShareService {
    @CloudFunction("040105")
    String createShare(ShareDTO share);

    @CloudFunction("040106")
    ShareDTO getShare(String fundNumber, String cardNumber);

    @CloudFunction("040107")
    String updateShare(ShareDTO share);

    @CloudFunction("040108")
    String checkRedemption(ShareDTO share);
}
