package tongji.product.api.pojo;

import java.util.Calendar;
import java.util.Date;

public class SettlementDTO {
    // ptr     %3 : 今天
    // (ptr+1) %3 : 前天
    // (ptr+2) %3 : 昨天
    private int ptr;
    private Date[] dates;

    public SettlementDTO(){
        ptr = 0;
        dates = new Date[3];
        dates[0] = new Date();
        long miliSec = dates[0].getTime();
        long inOneDay = miliSec % (86400 * 1000);
        miliSec -= inOneDay;
        dates[0].setTime(miliSec);

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dates[0]);

        // 昨天
        while(true){
            calendar.add(Calendar.DATE, -1);
            int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
            if(w < 0){
                w = 0;
            }
            if(w>0 && w<6){
                break;
            }
        }
        dates[2]=calendar.getTime();

        // 前天
        while(true){
            calendar.add(Calendar.DATE, -1);
            int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
            if(w < 0){
                w = 0;
            }
            if(w>0 && w<6){
                break;
            }
        }
        dates[1]=calendar.getTime();
    }

    public SettlementDTO(Date nowDate){
        ptr = 0;
        dates = new Date[3];
        dates[0] = nowDate;

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dates[0]);

        // 昨天
        while(true) {
            calendar.add(Calendar.DATE, -1);
            int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
            if(w < 0){
                w = 0;
            }
            if(w>0 && w<6){
                break;
            }
        }
        dates[2]=calendar.getTime();

        // 前天
        while(true){
            calendar.add(Calendar.DATE, -1);
            int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
            if(w < 0){
                w = 0;
            }
            if(w>0 && w<6){
                break;
            }
        }
        dates[1]=calendar.getTime();
    }

    public void moveToNextDay(){
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

    public Date getPreDate(){ return dates[(ptr+2)%3]; }

    public Date getTheDayBeforePreDate(){ return dates[(ptr+1)%3]; }
}
