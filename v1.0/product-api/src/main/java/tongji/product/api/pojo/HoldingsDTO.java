package tongji.product.api.pojo;

public class HoldingsDTO {
    private String fundNumber;
    private String cerNumber;
    private int totalShare;
    private String cardNumber;

//    public InvestorHoldingsDTO(String fundNumber, String cerNumber, BigDecimal totalShare, String cardNumber) {
//        this.fundNumber = fundNumber;
//        this.cerNumber = cerNumber;
//        this.totalShare = totalShare;
//        this.cardNumber = cardNumber;
//    }

    public String getFundNumber() {
        return fundNumber;
    }

    public void setFundNumber(String fundNumber) {
        this.fundNumber = fundNumber;
    }

    public String getCerNumber() {
        return cerNumber;
    }

    public void setCerNumber(String cerNumber) {
        this.cerNumber = cerNumber;
    }

    public int getTotalShare() {
        return totalShare;
    }

    public void setTotalShare(int totalShare) {
        this.totalShare = totalShare;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }
}
