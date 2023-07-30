package tongji.product.api.pojo;

import java.util.Calendar;
import java.util.Date;

public class SettlementDTO {
    private int ptr;
    private Date[] dates;
    private boolean hasBefore;

    public SettlementDTO(){
        ptr = 0;
        hasBefore = false;

        dates = new Date[3];
        dates[0] = new Date();
    }

    public SettlementDTO(Date nowDate){
        ptr = 0;
        hasBefore = false;

        dates = new Date[3];
        dates[0] = nowDate;
    }

    public void moveToNextDay(){
        if(!hasBefore && ptr == 1){
            hasBefore = true;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dates[ptr]);
        while(true){
            calendar.add(Calendar.DATE, 1);
            int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
            if(w < 0){
                w = 0;
            }
            if(w>0 && w<6){
                break;
            }
        }
        ptr += 1;
        ptr %= 3;
        dates[ptr] = calendar.getTime();
    }

    public Date getNowDate(){
        return dates[ptr];
    }

    public Date getPreDate(){
        if (!hasBefore && ptr == 0)
            return null;
        return dates[(ptr+1)%3];
    }

    public Date getTheDayBeforePreDate(){
        if(!hasBefore && ptr == 1)
            return null;
        return dates[(ptr+2)%3];
    }
}
