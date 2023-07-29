package tongji.product.api.pojo;

import java.util.List;

public class DailyValueChanges {

    private DailyValueDTO dailyValue;
    float changes;

    public DailyValueDTO getDailyValue() { return dailyValue; }
    public void setDailyValue(DailyValueDTO dailyValue) { this.dailyValue = dailyValue; }
    public float getChanges() { return changes; }
    public void setChanges(float changes) { this.changes = changes; }
}
