package tongji.product.api.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class DailyValueDTO {
    private String fundNumber;
    private float value;

    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd",timezone="GMT+8")
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

    public float getValue() {
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
