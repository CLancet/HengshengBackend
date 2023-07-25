package tongji.product.server.mapper;

import org.apache.ibatis.annotations.*;
import tongji.product.api.pojo.InvesterDTO;
@Mapper
public interface InvesterMapper {
    @Insert("insert into invester(user_type, user_name, cer_type, cer_number,risk_grade) VALUES(#{invester.userType},#{invester.userName},#{invester.cerType},#{invester.cerNumber},#{invester.riskGrade})")
    int createInvester(@Param("invester")InvesterDTO invester);

    @Select("SELECT user_type as userType,user_name as userName,cer_type as cerType,cer_number as cerNumber,risk_grade as riskGrade from invester where cer_number=#{number}")
    InvesterDTO getInvester(@Param("number")String number);


}
