
/*drop table `fund`.`fund_product`;
drop table `fund`.`daily_value`;


CREATE TABLE `fund`.`fund_product` (
  `fund_number` VARCHAR(20) NOT NULL,
  `fund_name` VARCHAR(20) NOT NULL,
  `fund_type` VARCHAR(20) NOT NULL,
  `fund_risk` INT NULL,
  PRIMARY KEY (`fund_number`));

CREATE TABLE `fund`.`daily_value` (
  `fund_number` VARCHAR(20) NOT NULL,
  `fund_value` DECIMAL(13,2) NOT NULL,
  `fund_date` TIMESTAMP NOT NULL,
  PRIMARY KEY (`fund_number`, `fund_date`));*/

INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('005827', '易方达蓝筹精选', '股票基金', '3');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('000083', '汇添富消费行业', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('161005', '富国天惠成长混合A', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('163402', '兴全趋势投资LOF', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('163415', '兴全商业模式混合', '股票基金', '3');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('162605', '景顺长城鼎益混合LOF', '债券基金', '2');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('270002', '广发稳健增长混合A', '货币基金', '1');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('007119', '睿远成长混合A', '混合基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('005968', '广发医疗保健股票', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('001938', '广发中证ETF联接A', '股票基金', '3');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('001064', '华夏能源革新混合A', '股票基金', '4');
INSERT INTO `fund`.`fund_product` (`fund_number`, `fund_name`, `fund_type`, `fund_risk`) VALUES ('005911', '易方达中小盘混合A', '货币基金', '1');

-- Fund 005827
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-01', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-02', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-03', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-04', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-05', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-06', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-07', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-08', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-09', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-10', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-11', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-12', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-13', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-14', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-15', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-16', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-18', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-19', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-20', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-22', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-23', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-24', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-26', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-27', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-28', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-29', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-30', '1.22');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005827', '2023-07-31', '1.25');

-- Fund 000083
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-01', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-02', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-03', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-04', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-05', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-06', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-07', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-08', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-09', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-10', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-11', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-12', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-13', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-14', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-15', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-16', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-18', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-19', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-20', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-22', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-23', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-24', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-26', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-27', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-28', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-29', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-30', '1.22');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('000083', '2023-07-31', '1.25');

--fund 161005
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-01', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-02', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-03', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-04', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-05', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-06', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-07', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-08', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-09', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-10', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-11', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-12', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-13', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-14', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-15', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-16', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-18', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-19', '1.18');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-20', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-22', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-23', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-24', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-25', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-26', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-27', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-28', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-29', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-30', '1.28');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('161005', '2023-07-31', '1.26');


-- Fund 163402
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-01', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-02', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-03', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-04', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-05', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-06', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-07', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-08', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-09', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-10', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-11', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-12', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-13', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-14', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-15', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-16', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-17', '1.19');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-18', '1.18');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-19', '1.17');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-20', '1.16');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-21', '1.15');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-22', '1.14');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-23', '1.13');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-24', '1.12');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-25', '1.11');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-26', '1.10');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-27', '1.09');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-28', '1.08');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-29', '1.07');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-30', '1.06');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163402', '2023-07-31', '1.05');

-- Fund 163415
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-01', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-02', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-03', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-04', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-05', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-06', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-07', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-08', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-09', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-10', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-11', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-12', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-13', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-14', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-15', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-16', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-17', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-18', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-19', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-20', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-21', '1.29');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-22', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-23', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-24', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-26', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-27', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-28', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-29', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-30', '1.20');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('163415', '2023-07-31', '1.19');

-- Fund 162605
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-01', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-02', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-03', '1.57');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-04', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-05', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-06', '1.54');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-07', '1.53');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-08', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-09', '1.51');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-10', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-11', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-12', '1.48');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-13', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-14', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-15', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-16', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-17', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-18', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-19', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-20', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-21', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-22', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-23', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-24', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-25', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-26', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-27', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-28', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-29', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-30', '1.30');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('162605', '2023-07-31', '1.29');

-- Fund 270002
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-01', '1.20');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-02', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-03', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-04', '1.28');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-05', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-06', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-07', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-08', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-09', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-10', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-11', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-12', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-13', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-14', '1.58');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-15', '1.61');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-16', '1.64');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-17', '1.67');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-18', '1.70');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-19', '1.73');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-20', '1.76');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-21', '1.79');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-22', '1.82');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-23', '1.85');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-24', '1.88');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-25', '1.91');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-26', '1.94');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-27', '1.97');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-28', '2.00');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-29', '2.03');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-30', '2.06');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('270002', '2023-07-31', '2.09');

-- Fund 007119
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-01', '1.70');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-02', '1.68');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-03', '1.67');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-04', '1.65');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-05', '1.64');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-06', '1.62');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-07', '1.61');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-08', '1.59');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-09', '1.58');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-10', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-11', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-12', '1.53');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-13', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-14', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-15', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-16', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-17', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-18', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-19', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-20', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-21', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-22', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-23', '1.30');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-24', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-25', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-26', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-27', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-28', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-29', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-30', '1.60');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('007119', '2023-07-31', '1.62');

-- Fund 005968
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-01', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-02', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-03', '1.57');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-04', '1.56');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-05', '1.55');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-06', '1.54');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-07', '1.53');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-08', '1.52');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-09', '1.51');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-10', '1.50');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-11', '1.49');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-12', '1.48');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-13', '1.47');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-14', '1.46');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-15', '1.45');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-16', '1.44');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-17', '1.43');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-18', '1.42');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-19', '1.41');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-20', '1.40');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-21', '1.39');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-22', '1.38');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-23', '1.37');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-24', '1.36');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-25', '1.35');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-26', '1.34');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-27', '1.33');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-28', '1.32');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-29', '1.31');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-30', '1.30');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('005968', '2023-07-31', '1.29');

-- Fund 001938
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-01', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-02', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-03', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-04', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-05', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-06', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-07', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-08', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-09', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-10', '1.27');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-11', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-12', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-13', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-14', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-15', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-16', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-17', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-18', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-19', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-20', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-21', '1.22');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-22', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-23', '1.21');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-24', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-25', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-26', '1.26');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-27', '1.25');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-28', '1.23');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-29', '1.24');
INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-30', '1.22');
--INSERT INTO `fund`.`daily_value` (`fund_number`, `fund_date`, `fund_value`) VALUES ('001938', '2023-07-31', '1.25');
