package tongji.product.server.impl;

import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import org.springframework.beans.factory.annotation.Autowired;
import tongji.product.api.ShareService;
import tongji.product.api.pojo.ShareDTO;
import tongji.product.server.mapper.ShareMapper;

import java.util.List;

@CloudComponent
public class ShareServiceImpl implements ShareService {
    @Autowired
    private ShareMapper shareMapper;

    public String createShare(ShareDTO share) {
        ShareDTO existShare = getShare(share.getFundNumber(), share.getCardNumber());
        if(null == existShare){
            shareMapper.createShare(share);
            return share.getCardNumber();
        }
        shareMapper.updateShare(share);
        return share.getCardNumber();
    }

    public ShareDTO getShare(String fundNumber, String cardNumber) {
        return shareMapper.getShare(fundNumber, cardNumber);
    }

    public String updateShare(ShareDTO share) {
        ShareDTO existShare = getShare(share.getFundNumber(), share.getCardNumber());
        if(null == existShare){
            shareMapper.createShare(share);
            return share.getCardNumber();
        }
        shareMapper.updateShare(share);
        shareMapper.deleteEmptyShare();
        return share.getCardNumber();
    }

    public String checkRedemption(ShareDTO share) {
        ShareDTO existShare = getShare(share.getFundNumber(), share.getCardNumber());
        if(null == existShare){
            return "不存在对应银行卡持仓记录";
        }
        if(existShare.getShare() < share.getShare()){
            return "持仓份额小于赎回份额";
        }
        return "OK";
    }
}
