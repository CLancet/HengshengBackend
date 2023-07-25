package tongji.product.api.pojo;

import org.apache.logging.log4j.core.config.plugins.validation.constraints.NotBlank;

import java.sql.Date;

public class DailyValueDTO {
    private String fundNumber;
    @NotBlank
    private Float value;
    private Date date;

//    public DailyValueDTO(String fundNumber, float value, Date date) {
//        this.fundNumber = fundNumber;
//        this.value = value;
//        this.date = date;
//    }

    public String getFundNumber() {
        return fundNumber;
    }

    public void setFundNumber(String fundNumber) {
        this.fundNumber = fundNumber;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

//    @Override
//    public String toString() {
//        return "DailyValueDTO{" +
//                "fundNumber='" + fundNumber + '\'' +
//                ", value=" + value +
//                ", date=" + date +
//                '}';
//    }
}
