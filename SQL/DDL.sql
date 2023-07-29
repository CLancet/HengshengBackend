-- CREATE TABLE `test1`.`subscription` (
--  `sub_state` VARCHAR(20) NULL DEFAULT '待确认',
--  `fund_number` VARCHAR(20) NOT NULL,
--  `cer_number` VARCHAR(20) NOT NULL,
--  `sub_amount` DECIMAL(13,2) NOT NULL,
--  `sub_date` TIMESTAMP NOT NULL,
--  `sub_share` DECIMAL(13,2) NULL,
--  `sub_card_number` VARCHAR(20) NOT NULL,
--  PRIMARY KEY (`fund_number`, `cer_number`, `sub_date`, `sub_card_number`));


-- CREATE TABLE `test1`.`investor_holdings` (
--  `fund_number` VARCHAR(20) NOT NULL,
--  `cer_number` VARCHAR(20) NOT NULL,
--  `total_share` DECIMAL(13,2) NULL,
--  `card_number` VARCHAR(20) NOT NULL,
--  PRIMARY KEY (`fund_number`, `cer_number`, `card_number`));


-- 投资者
INSERT INTO `fund`.`invester` (`user_type`, `user_name`, `cer_type`, `cer_number`, `risk_grade`) VALUES ('个人', '王大卫',   '身份证', '310101ppppqqqqrrrr', '3');
INSERT INTO `fund`.`invester` (`user_type`, `user_name`, `cer_type`, `cer_number`, `risk_grade`) VALUES ('公司', 'aaa',     '公司证件', '12345', '1');
INSERT INTO `fund`.`invester` (`user_type`, `user_name`, `cer_type`, `cer_number`, `risk_grade`) VALUES ('个人', '同济葛蕾', '身份证', '310101666666666666', '2');
INSERT INTO `fund`.`invester` (`user_type`, `user_name`, `cer_type`, `cer_number`, `risk_grade`) VALUES ('个人', '小明',   '身份证', '310101hhhhjjjjkkkk', '5');
INSERT INTO `fund`.`invester` (`user_type`, `user_name`, `cer_type`, `cer_number`, `risk_grade`) VALUES ('公司', '同济大学', '公司证件', 'abcde', '4');

-- 银行卡
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('BC', '1111 1111 1111 1111', '310101ppppqqqqrrrr', '100.0');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ABC', '2222 2222 2222 2222', 'abcde', '123456789.10');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ABC', '3333 3333 3333 3333', 'abcde', '23.45');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ICBC', '4444 4444 4444 4444', '310101666666666666', '0.1');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('CCB', '5555 5555 5555 5555', '310101666666666666', '1.9');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('HSBC', '6666 6666 6666 6666', '310101666666666666', '1000.0');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ABC', '7777 7777 7777 7777', '310101hhhhjjjjkkkk', '100.0');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('BC', '8888 8888 8888 8888', '310101hhhhjjjjkkkk', '100.0');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ABC', '9999 9999 9999 9999', '12345', '100.0');
INSERT INTO `fund`.`bank_card` (`bank_name`, `card_number`, `cer_number`, `balance`) VALUES ('ICBC', '1010 1010 1010 1010', '12345', '10770.0');

-- 基金产品
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('11111', '暴富宝', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('22222', '基金宝', '货币基金', '1');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('33333', '混合宝', '混合基金', '3');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('44444', '债券宝', '债券基金', '2');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('55555', '基金宝2', '货币基金', '1');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('66666', '暴富宝2', '货币基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('77777', '混合宝2', '混合基金', '3');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('88888', '债券宝2', '债券基金', '2');

-- 银行卡账单
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('8888 8888 8888 8888', '2023-07-27 12:00:00', '11', '22222', '1011');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('8888 8888 8888 8888', '2023-07-28 12:10:00', '-11', '33333', '1000');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('8888 8888 8888 8888', '2023-07-28 12:25:00', '1.1', '44444', '1001.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('8888 8888 8888 8888', '2023-07-28 12:00:00', '-901.1', '55555', '100.0');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-06-28 12:00:00', '11', '22222', '11.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-06-29 00:00:00', '12', '22222', '23.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-06-30 10:00:43', '13', '55555', '36.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-01 15:23:00', '14', '22222', '50.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-02 00:00:00', '15', '88888', '65.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-03 00:56:00', '16', '22222', '81.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-04 00:00:00', '17', '11111', '98.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-05 00:13:00', '18', '22222', '116.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-06 00:00:59', '19', '44444', '135.1');
INSERT INTO `fund`.`card_statement` (`card_number`, `state_date`, `state_amount`, `fund_number`, `sta_balance`) VALUES ('1111 1111 1111 1111', '2023-07-07 15:00:17', '-55.1', '22222', '100');

-- Fund 22222
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-01', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-02', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-03', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-04', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-05', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-06', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-07', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-08', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-09', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-10', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-11', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-12', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-13', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-14', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-15', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-16', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-18', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-19', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-20', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-22', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-23', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-24', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-26', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-27', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-28', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-29', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-30', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('22222', '2023-07-31', '1.25');

-- Fund 11111
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-01', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-02', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-03', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-04', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-05', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-06', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-07', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-08', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-09', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-10', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-11', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-12', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-13', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-14', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-15', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-16', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-18', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-19', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-20', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-22', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-23', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-24', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-26', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-27', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-28', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-29', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-30', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('11111', '2023-07-31', '1.25');

-- Fund 33333
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-01', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-02', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-03', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-04', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-05', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-06', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-07', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-08', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-09', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-10', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-11', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-12', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-13', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-14', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-15', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-16', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-18', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-19', '1.18');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-20', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-22', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-23', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-24', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-25', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-26', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-27', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-28', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-29', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-30', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('33333', '2023-07-31', '1.26');

-- Fund 44444
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-01', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-02', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-03', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-04', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-05', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-06', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-07', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-08', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-09', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-10', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-11', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-12', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-13', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-14', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-15', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-16', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-17', '1.19');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-18', '1.18');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-19', '1.17');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-20', '1.16');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-21', '1.15');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-22', '1.14');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-23', '1.13');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-24', '1.12');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-25', '1.11');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-26', '1.10');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-27', '1.09');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-28', '1.08');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-29', '1.07');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-30', '1.06');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('44444', '2023-07-31', '1.05');

-- Fund 55555
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-01', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-02', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-03', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-04', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-05', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-06', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-07', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-08', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-09', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-10', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-11', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-12', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-13', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-14', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-15', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-16', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-17', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-18', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-19', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-20', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-21', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-22', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-23', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-24', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-26', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-27', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-28', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-29', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-30', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('55555', '2023-07-31', '1.19');

-- Fund 66666
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-01', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-02', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-03', '1.57');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-04', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-05', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-06', '1.54');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-07', '1.53');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-08', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-09', '1.51');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-10', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-11', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-12', '1.48');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-13', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-14', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-15', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-16', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-17', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-18', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-19', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-20', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-21', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-22', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-23', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-24', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-25', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-26', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-27', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-28', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-29', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-30', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('66666', '2023-07-31', '1.29');

-- Fund 77777
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-01', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-02', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-03', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-04', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-05', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-06', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-07', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-08', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-09', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-10', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-11', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-12', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-13', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-14', '1.58');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-15', '1.61');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-16', '1.64');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-17', '1.67');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-18', '1.70');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-19', '1.73');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-20', '1.76');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-21', '1.79');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-22', '1.82');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-23', '1.85');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-24', '1.88');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-25', '1.91');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-26', '1.94');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-27', '1.97');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-28', '2.00');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-29', '2.03');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-30', '2.06');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('77777', '2023-07-31', '2.09');

-- Fund 88888
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-01', '1.70');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-02', '1.68');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-03', '1.67');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-04', '1.65');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-05', '1.64');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-06', '1.62');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-07', '1.61');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-08', '1.59');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-09', '1.58');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-10', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-11', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-12', '1.53');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-13', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-14', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-15', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-16', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-17', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-18', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-19', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-20', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-21', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-22', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-23', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-24', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-25', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-26', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-27', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-28', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-29', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-30', '1.60');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('88888', '2023-07-31', '1.62');


INSERT INTO `fund`.`subscription` (`sub_state`, `fund_number`, `cer_number`, `sub_amount`, `sub_date`, `sub_share`, `sub_card_number`) VALUES ('待确认', '11111', '12345', '10', '2023-07-01', '10', '9999 9999 9999 9999');
INSERT INTO `fund`.`subscription` (`sub_state`, `fund_number`, `cer_number`, `sub_amount`, `sub_date`, `sub_share`, `sub_card_number`) VALUES ('待确认', '22222', 'abcde', '10', '2023-07-01', '10', '2222 2222 2222 2222');
INSERT INTO `fund`.`subscription` (`sub_state`, `fund_number`, `cer_number`, `sub_amount`, `sub_date`, `sub_share`, `sub_card_number`) VALUES ('待确认', '33333', '310101ppppqqqqrrrr', '10', '2023-07-01', '10', '1111 1111 1111 1111');
INSERT INTO `fund`.`subscription` (`sub_state`, `fund_number`, `cer_number`, `sub_amount`, `sub_date`, `sub_share`, `sub_card_number`) VALUES ('待确认', '44444', '310101666666666666', '10', '2023-07-01', '10', '6666 6666 6666 6666');
INSERT INTO `fund`.`subscription` (`sub_state`, `fund_number`, `cer_number`, `sub_amount`, `sub_date`, `sub_share`, `sub_card_number`) VALUES ('待确认', '55555', '310101hhhhjjjjkkkk', '10', '2023-07-01', '10', '7777 7777 7777 7777');


INSERT INTO `fund`.`redemption` (`red_state`, `fund_number`, `cer_number`, `red_amount`, `red_date`, `red_share`, `red_card_number`) VALUES ('待确认', '11111', '12345', '10', '2023-08-01', '10', '9999 9999 9999 9999');
INSERT INTO `fund`.`redemption` (`red_state`, `fund_number`, `cer_number`, `red_amount`, `red_date`, `red_share`, `red_card_number`) VALUES ('待确认', '22222', 'abcde', '10', '2023-08-01', '10', '2222 2222 2222 2222');
INSERT INTO `fund`.`redemption` (`red_state`, `fund_number`, `cer_number`, `red_amount`, `red_date`, `red_share`, `red_card_number`) VALUES ('待确认', '3333', '310101ppppqqqqrrrr', '10', '2023-08-01', '10', '1111 1111 1111 1111');
INSERT INTO `fund`.`redemption` (`red_state`, `fund_number`, `cer_number`, `red_amount`, `red_date`, `red_share`, `red_card_number`) VALUES ('待确认', '44444', '310101666666666666', '10', '2023-08-01', '10', '6666 6666 6666 6666');
INSERT INTO `fund`.`redemption` (`red_state`, `fund_number`, `cer_number`, `red_amount`, `red_date`, `red_share`, `red_card_number`) VALUES ('待确认', '55555', '310101hhhhjjjjkkkk', '10', '2023-08-01', '10', '7777 7777 7777 7777');


INSERT INTO `fund`.`investor_holdings` (`fund_number`, `cer_number`, `total_share`, `card_number`) VALUES ('11111', '12345', '1000', '9999 9999 9999 9999');
INSERT INTO `fund`.`investor_holdings` (`fund_number`, `cer_number`, `total_share`, `card_number`) VALUES ('22222', 'abcde', '1000', '2222 2222 2222 2222');
INSERT INTO `fund`.`investor_holdings` (`fund_number`, `cer_number`, `total_share`, `card_number`) VALUES ('33333', '310101ppppqqqqrrrr', '1000', '1111 1111 1111 1111');
INSERT INTO `fund`.`investor_holdings` (`fund_number`, `cer_number`, `total_share`, `card_number`) VALUES ('44444', '310101666666666666', '1000', '6666 6666 6666 6666');
INSERT INTO `fund`.`investor_holdings` (`fund_number`, `cer_number`, `total_share`, `card_number`) VALUES ('55555', '310101hhhhjjjjkkkk', '1000', '7777 7777 7777 7777');

