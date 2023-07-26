package tongji.product.server.mapper;

import org.apache.ibatis.annotations.*;
import tongji.product.api.pojo.RedemptionDTO;

import java.util.List;

@Mapper
public interface RedemptionMapper {
    @Insert("insert into redemption(red_state,fund_number,cer_number,red_amount,red_date,red_share,red_card_number) " +
            "values(#{re.redState},#{re.fundNumber},#{re.cerNumber},#{re.redAmount},#{re.redDate},#{re.redShare},#{re.redCardNumber}")
    String createRedemption(@Param("re")RedemptionDTO redemption);

    @Delete("delete from redemption where fund_number=#{re.fundNumber} and cerNumber=#{re.cerNumber} and red_date=#{re.redDate} and red_card_number=#{re.redCardNumber}")
    String deleteRedemption(@Param("re") RedemptionDTO redemption);

    @Select("select red_state as redState,fund_number as fundNumber,cer_number as cerNumber,red_amount as redAmount," +
            "red_date as redDate,red_share as redShare,red_card_number as redCardNumber from redemption where cer_number=#{number}")
    List<RedemptionDTO> getRedemption(@Param("number") String cerNumber);

    @Select("select red_state as redState,fund_number as fundNumber,cer_number as cerNumber,red_amount as redAmount," +
            "red_date as redDate,red_share as redShare,red_card_number as redCardNumber from redemption " +
            "where cer_number=#{re.cerNumber} and fund_number=#{re.fundNumber} and red_date=#{re.redDate} and red_card_number=#{re.redCardNumber}")
    RedemptionDTO getOneRedemption(@Param("re") RedemptionDTO redemption);
}
