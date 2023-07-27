package tongji.product.server.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tongji.product.api.pojo.CardStatementDTO;

import java.util.List;

@Mapper
public interface CardStatementMapper {
    @Insert("insert into card_statement(card_number,state_date,state_amount,fund_number,sta_balance) " +
            "values(#{card.cardNumber},#{card.stateDate},#{card.stateAmount},#{card.fundNumber},#{card.staBalance})")
    int addCardStatement(@Param("card") CardStatementDTO cardStatement);

    @Select("select card_number as cardNumber, state_date as stateDate, state_amount as stateAmount, fund_number as fundNumber, sta_balance as staBalance " +
            "from card_statement where card_number=#{card.cardNumber} and fund_number=#{card.fundNumber}")
    List<CardStatementDTO> getCardStatementViaFund(@Param("card") CardStatementDTO cardStatement);

    @Select("select card_number as cardNumber, state_date as stateDate, state_amount as stateAmount, fund_number as fundNumber, sta_balance as staBalance " +
            "from card_statement where where card_number=#{card.cardNumber} and state_date=#{card.stateDate}")
    List<CardStatementDTO> getCardStatementViaDate(@Param("card") CardStatementDTO cardStatement);

    @Select("select card_number as cardNumber, state_date as stateDate, state_amount as stateAmount, fund_number as fundNumber, sta_balance as staBalance " +
            "from card_statement where where card_number=#{card.cardNumber} and fund_number=#{card.fundNumber} and state_date=#{card.stateDate}")
    CardStatementDTO getCardStatement(@Param("card") CardStatementDTO cardStatement);
}
