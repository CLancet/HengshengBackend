package tongji.product.server.mapper;


import org.apache.ibatis.annotations.*;
import tongji.product.api.pojo.ProductDTO;

@Mapper
public interface ProductMapper {
    @Insert("insert into fund_product(fund_number, fund_name, fund_type,fund_risk) VALUES (#{fund.fundNumber},#{fund.fundName},#{fund.fundType},#{fund.fundRisk})")
    int createProduct(@Param("fund")ProductDTO fund);

    @Select("SELECT fund_number as fundNumber,fund_name as fundName,fund_type as fundType,fund_risk from fund_product where fund_number=#{number} ")
    ProductDTO getProduct(@Param("number")String number);

    @Update("UPDATE fund_product set fund_name=#{product.productName} WHERE fund_number=#{product.fundNumber}")
    int updateProduct(@Param("product") ProductDTO product);

}
