# HengshengBackend
## 第三小组

### 端口9091, 以下为接口及其示例(以localhost为例)

### 基金产品相关

1. 创建基金产品, 方法: **POST**

fund_number  基金编号  11111<br>
fund_name    基金名字  暴富宝<br>
fund_type    基金类型  股票基金<br>
fund_risk    基金风险  2<br>

示例：
```
127.0.0.1:9091/createProduct?fund_number=11111&fund_name=暴富宝&fund_type=股票基金&fund_risk=2
```

返回类型: String<br>
返回内容: 新建产品的编号<br>
返回示例:
```
11111
```


   
2. 获取基金产品（单个）方法: **GET**

fund_number  基金编号  11111<br>
示例：
```
127.0.0.1:9091/getProduct?fund_number=11111
```
返回类型: ProductDTO<br>
返回内容: 获取产品的信息<br>
返回示例:
```
{
    "fundNumber": "wwwww",
    "fundName": "暴富宝",
    "fundType": "股票基金",
    "fundRisk": 2
}
```


      
3. 修改产品 方法: **PATCH**

fund_number  基金编号  11111<br>
fund_name    基金名字  暴富宝<br>
fund_type    基金类型  股票基金<br>
fund_risk    基金风险  2<br>
示例：
```
127.0.0.1:9091/modifyProduct?fund_number=11111&fund_name=暴富宝&fund_type=股票基金&fund_risk=2
```
返回类型: String<br>
返回内容: 修改产品的编号<br>
返回示例:
```
11111
```


   
4. 删除产品 方法: **DELETE**

fund_number  基金编号  11111<br>
示例：
```
127.0.0.1:9091/deleteProduct?fund_number=11111
```
返回类型: ProductDTO<br>
返回内容: 删除产品的编号<br>
返回示例:
```
11111
```

5. 获取所有基金产品 方法: **GET**

（无参数）
```
127.0.0.1:9091/deleteProduct?fund_number=11111
```
返回类型: List\<ProductDTO\><br>
返回内容: 获取的产品<br>
返回示例:
```
[
    {
        "fundNumber": "11111",
        "fundName": "血妈转",
        "fundType": "股票基金",
        "fundRisk": 4
    },
    {
        "fundNumber": "wwwww",
        "fundName": "亏损宝",
        "fundType": "股票基金",
        "fundRisk": 2
    }
]
```

6. 创建日净值 方法: **POST**
fund_number  基金编号  11111<br>
fund_value   当日净值  1.22<br>
fund_date    净值日期  2023-07-03<br>
示例: 
```
127.0.0.1:9091/createDailyValue?fund_number=11111&fund_value=1.22
```
返回类型: String<br>
返回内容: 更新净值基金的编号<br>
返回示例: 
```
11111
```

7. 获取日净值 方法: **GET**<br>
fund_number 基金编号 11111<br>
示例:
```
127.0.0.1:9091/getDailyValue?fund_number=11111
```
返回类型: List\<DailyValueDTO\><br>
返回内容: 该基金的历史日净值走势<br>
返回示例:
```
[
    {
        "fundNumber": "22222",
        "fundValue": 1.0,
        "fundDate": "2021-01-01"
    },
    {
        "fundNumber": "22222",
        "fundValue": 1.2,
        "fundDate": "2021-01-02"
    }
]
```
8. 根据日期获取日净值 方法：**GET**<br>
fund_Date 查询日期 2023-07-28<br>
示例;
```
127.0.0.1:9091/getDailyValueByDate?fund_date=2023-07-28
```
返回类型：List < DailyValueDTO><br>
返回内容：该日期的所有日净值信息<br>
返回示例：
```
[
    {
        "fundNumber": "22222",
        "fundValue": 1.0,
        "fundDate": "2021-01-01"
    },
    {
        "fundNumber": "22222",
        "fundValue": 1.2,
        "fundDate": "2021-01-02"
    }
]
```

### 银行卡
8. 获取某用户所有银行卡 方法: **GET**<br>

cer_number 客户证件号 310101xxxxyyyyzzzz<br>
示例: 
```
127.0.0.1:9091/getBankCard/all?cer_number=310101xxxxyyyyzzzz
```
返回类型: List\<BankCardDTO\><br>
返回内容: 银行卡列表<br>
返回示例:
```
[
    {
        "bankName": "BC",
        "cardNumber": "1111 2222 3333 4444",
        "cerNumber": "310101xxxxyyyyzzzz",
        "balance": 2500.0
    },
    {
        "bankName": "BC",
        "cardNumber": "1111 2222 33333 4444",
        "cerNumber": "310101xxxxyyyyzzzz",
        "balance": 122234.56
    },
    {
        "bankName": "ICBC",
        "cardNumber": "1234 2234 3234 4234",
        "cerNumber": "310101xxxxyyyyzzzz",
        "balance": 1234.56
    }
]
```
9. 获取一张银行卡 方法: **GET**<br>

card_number 银行卡号<br>
cer_number 证件号<br>
示例:
```
127.0.0.1:9091/getBankCard/one?cer_number=310101xxxxyyyyzzzz&card_number=8888 8888 8888 8888
```
返回类型: BankCardDTO<br>
返回内容: 一张银行卡<br>
返回示例:
```
{
    "bankName": "ICBC",
    "cardNumber": "1234 2234 3234 4234",
    "cerNumber": "310101xxxxyyyyzzzz",
    "balance": 1234.56
}
```

10.  添加银行卡 方法: **POST**

card_number 卡号<br>
cer_number 证件号<br>
bank_name 银行名字<br>
balance 余额<br>
示例: 
```
127.0.0.1:9091/addBankCard/cer_number=310101xxxxyyyyzzzz&card_number=8888 8888 8888 8888&bank_name=ICBC&balance=100.0
```
返回类型: String<br>
返回内容: 卡号<br>
返回示例:
```
8888 8888 8888 8888
```

11. 删除银行卡 方法: **DELETE**

card_number 卡号<br>
cer_number 证件号<br>
示例: 
```
127.0.0.1:9091/addBankCard/cer_number=310101xxxxyyyyzzzz&card_number=8888 8888 8888 8888&bank_name=ICBC&balance=100.0
```
返回类型: String
返回内容: 卡号
返回示例:
```
8888 8888 8888 8888
```

12.  更改银行卡 方法: **PATCH**
card_number 卡号<br>
cer_number 证件号<br>
bank_name 银行名字<br>
balance 余额<br>
示例: 
```
127.0.0.1:9091/addBankCard/cer_number=310101xxxxyyyyzzzz&card_number=8888 8888 8888 8888&bank_name=ICBC&balance=100.0
```
返回类型: String
返回内容: 卡号
返回示例:
```
8888 8888 8888 8888
```

### 银行卡流水

13.  创建流水信息 方法: **POST**
card_number 卡号<br>
state_amount 交易金额<br>
fund_number 基金代码<br>
sta_balance 交易后卡内余额<br>
示例:
```
127.0.0.1:9091/createCardStatement?card_number=8888 8888 8888 8888&state_amount=12.34&fund_number=11111&sta_balance=1000.22
```
返回类型: String
返回内容: 卡号
返回示例:
```
8888 8888 8888 8888
```

14.  以基金为关键字获取流水 方法: **GET**
card_number 卡号<br>
fund_number 基金代码<br>
示例:
```
127.0.0.1:9091/getCardStatement/fund?card_number=8888 8888 8888 8888&fund_number=11111
```
返回类型: List\<CardStatementDTO\>
返回内容: 流水信息
返回示例:
```
[
    {
        "cardNumber": "8888 8888 8888 8888",
        "stateDate": "2021-01-01 12:00:00",
        "stateAmount": 12.34,
        "fundNumber": "22222",
        "staBalance": 34.56
    },
    {
        "cardNumber": "8888 8888 8888 8888",
        "stateDate": "2023-07-27 13:50:33",
        "stateAmount": 100.02,
        "fundNumber": "22222",
        "staBalance": 111.22
    }
]
```

### 投资者相关

15.   创建投资者 方法: **POST**

user_type 用户类型<br>
user_name 用户姓名<br>
cer_type 证件类型<br>
cer_number 证件号码<br>
risk_grade 风险等级<br>
示例:
```
127.0.0.1:9091/createInvester?user_type=个人&user_name=小明&cer_type=身份证&risk_grade=3
```
返回类型: String<br>
返回内容: 用户证件号码<br>
返回示例: 
```
310101xxxxyyyyzzzz
```

16.   获取某个投资者 方法: **GET**

cer_number 证件号<br>
示例:
```
127.0.0.1:9091/getInvester?cer_number=310101xxxxyyyyzzzz
```
返回类型: InvesterDTO
返回内容: 用户信息
返回示例:
```
{
    "userType": "student",
    "userName": "Jason",
    "cerType": "cer",
    "cerNumber": "310101xxxxyyyyzzzz",
    "riskGrade": 1
}
```

17.   获取所有投资者 方法: **GET** 
(无参数)<br>
示例:
```
127.0.0.1:9091/getInvester/all
```
返回类型: List\<InvesterDTO\>
返回内容: 投资者列表
返回示例:
```
[
    {
        "userType": "person",
        "userName": "葛蕾同济",
        "cerType": "cer",
        "cerNumber": "tj123",
        "riskGrade": 10
    },
    {
        "userType": "person",
        "userName": "同济陈荣",
        "cerType": "cer",
        "cerNumber": "tj456",
        "riskGrade": 2
    },
    {
        "userType": "person",
        "userName": "同张济颖",
        "cerType": "cer",
        "cerNumber": "tj789",
        "riskGrade": 5
    }
]
```