package tongji.product.api.pojo;

import org.apache.logging.log4j.core.config.plugins.validation.constraints.NotBlank;

public class ShareDTO {
    @NotBlank
    private String fundNumber;
    @NotBlank
    private String cardNumber;
    private int cardShare;

    public String getFundNumber() { return fundNumber; }
    public void setFundNumber(String fundNumber) { this.fundNumber = fundNumber; }

    public String getCardNumber() { return cardNumber; }
    public void setCardNumber(String cardNumber) { this.cardNumber = cardNumber; }

    public int getShare() { return cardShare; }
    public void setShare (int cardShare) { this.cardShare = cardShare; }
}
