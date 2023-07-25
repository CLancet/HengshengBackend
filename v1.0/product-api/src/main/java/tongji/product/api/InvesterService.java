package tongji.product.api;


import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import tongji.product.api.pojo.InvesterDTO;

@CloudService(validationNull = true, validation = true)
public interface InvesterService {
    @CloudFunction("0202")
    String createInvester(InvesterDTO invester);

    @CloudFunction("0203")
    InvesterDTO getInvester(String cerNumber);


    
    
}
