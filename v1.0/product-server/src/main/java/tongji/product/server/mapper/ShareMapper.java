package tongji.product.server.mapper;

import org.apache.ibatis.annotations.*;
import tongji.product.api.pojo.ShareDTO;

@Mapper
public interface ShareMapper {
    @Insert("insert into share(fund_number,card_number,card_share) values(#{share.fundNumber},#{share.cardNumber},#{share.cardShare})")
    int createShare(@Param("share") ShareDTO share);

    @Delete("delete from share where card_share = 0")
    int deleteEmptyShare();

    @Update("update share set share=#{share.cardShare} where fund_number=#{share.fundNumber} and card_number=#{share.cardNumber}")
    String updateShare(@Param("share")ShareDTO share);

    @Select("select fund_number as fundNumber,card_number as cardNumber, card_share as cardShare from share where fund_number=#{fund} and card_number=#{card}")
    ShareDTO getShare(@Param("fund") String fundNumber, @Param("card") String cardNumber);
}
