package tongji.product.server.impl;
import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import tongji.product.api.SubscriptionService;
import tongji.product.api.pojo.SubscriptionDTO;
import tongji.product.server.mapper.SubscriptionMapper;

import java.util.List;

@CloudComponent
public class SubscriptionServiceImpl implements SubscriptionService {

    @Autowired
    private SubscriptionMapper subscriptionMapper;

    public String createSubscription(SubscriptionDTO subscription) {
//        List<SubscriptionDTO> existingSubscriptions = subscriptionMapper.getSubscriptions(subscription.getCerNumber());
//        if (existingSubscriptions.isEmpty()) {
//            subscriptionMapper.createSubscription(subscription);
//            return subscription.getFundNumber();
//        }
//        throw new IllegalArgumentException("已存在相同的证件号的申购记录");
        subscriptionMapper.createSubscription(subscription);
        return "成功为用户"+subscription.getCerNumber()+"申购"+subscription.getFundNumber()+"基金";
    }

    public String updateSubscription(SubscriptionDTO subscription) {
//        SubscriptionDTO existingSubscription = subscriptionMapper.getOneSubscription(subscription.getSubCardNumber(), subscription.getCerNumber());
//        if (existingSubscription == null) {
//            subscriptionMapper.createSubscription(subscription);
//            return subscription.getFundNumber();
//        }
//        subscriptionMapper.updateSubscription(subscription);
//        return subscription.getFundNumber();
        return "已确认";
    }

}