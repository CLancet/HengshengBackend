package tongji.product.server.mapper;

import org.apache.ibatis.annotations.*;
import tongji.product.api.pojo.DailyValueDTO;

import java.util.Date;
import java.util.List;

@Mapper
public interface DailyValueMapper {
    @Insert("INSERT INTO daily_value (fund_number,fund_value,fund_date) Values (#{dailyValue.fundNumber},#{dailyValue.value},#{dailyValue.date})")
    int createDailyValue(@Param("dailyValue")DailyValueDTO dailyValue);

    @Update("UPDATE daily_value SET fund_value = #{dailyValue.value} WHERE fund_number = #{dailyValue.fundNumber} AND fund_date = #{dailyValue.date}")
    int updateDailyValue(@Param("dailyValue")DailyValueDTO dailyValue);

    @Select("SELECT fund_number as fundNumber,fund_value as value, fund_date as date FROM daily_value WHERE fund_number = #{fundNumber} ")
    //ND fund_date = #{date}
    List<DailyValueDTO> getDailyValue(@Param("fundNumber")String fundNumber/*, @Param("date") Date date*/);

    @Select("SELECT fund_number as fundNumber,fund_value as value, fund_date as date FROM daily_value WHERE fund_number = #{fundNumber} and fund_date=#{date}")
    DailyValueDTO getOneDailyValue(@Param("fundNumber")String fundNumber, @Param("date") Date date);
}