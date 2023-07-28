package tongji.product.api.pojo;

import java.util.Date;

public class SettlementDTO {
    private int ptr;
    private Date[] dates;
    private boolean hasBefore;

    SettlementDTO(){
        ptr = 0;
        hasBefore = false;

        dates = new Date[2];
        dates[0] = new Date();
    }

    SettlementDTO(Date nowDate){
        ptr = 0;
        hasBefore = false;

        dates = new Date[2];
        dates[0] = nowDate;
    }

    void moveToNextDay(){

    }
}
