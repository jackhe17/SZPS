/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : RY
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : RY

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2020-06-20 13:15:38
*/


-- ----------------------------
-- Table structure for EX_GDBS_SB
-- ----------------------------
DROP TABLE "RY"."EX_GDBS_SB";
CREATE TABLE "RY"."EX_GDBS_SB" (
"SBLSH" VARCHAR2(50 BYTE) NOT NULL ,
"SBLSH_SHORT" VARCHAR2(50 BYTE) NOT NULL ,
"SXBM" VARCHAR2(50 BYTE) NOT NULL ,
"SXMC" VARCHAR2(1000 BYTE) NOT NULL ,
"SXQXBM" VARCHAR2(50 BYTE) NOT NULL ,
"FSXBM" VARCHAR2(50 BYTE) NULL ,
"FSXMC" VARCHAR2(1000 BYTE) NULL ,
"SQRLX" VARCHAR2(2 BYTE) NOT NULL ,
"SQRMC" VARCHAR2(400 BYTE) NOT NULL ,
"SQRZJLX" VARCHAR2(10 BYTE) NULL ,
"SQRZJHM" VARCHAR2(50 BYTE) NOT NULL ,
"LXRXM" VARCHAR2(200 BYTE) NOT NULL ,
"LXRZJLX" VARCHAR2(2 BYTE) NULL ,
"LXRSFZJHM" VARCHAR2(50 BYTE) NULL ,
"LXRSJ" VARCHAR2(400 BYTE) NOT NULL ,
"LXRYX" VARCHAR2(400 BYTE) NULL ,
"SBXMMC" VARCHAR2(2000 BYTE) NOT NULL ,
"SBCLQD" VARCHAR2(2000 BYTE) NULL ,
"TJFS" VARCHAR2(2 BYTE) NOT NULL ,
"SBHZH" VARCHAR2(50 BYTE) NOT NULL ,
"SBSJ" DATE NOT NULL ,
"SBJTWD" VARCHAR2(400 BYTE) NULL ,
"XZQHDM" VARCHAR2(12 BYTE) NOT NULL ,
"YSBLSH" VARCHAR2(50 BYTE) NOT NULL ,
"BZ" VARCHAR2(2000 BYTE) NULL ,
"F_XZQHDM" VARCHAR2(12 BYTE) NULL ,
"USERIDCODE" VARCHAR2(2000 BYTE) NULL ,
"PROJECT_CODE" VARCHAR2(32 BYTE) NULL ,
"WSSBQD" VARCHAR2(2 BYTE) NULL ,
"OBTAIN_PAPER_WAY" VARCHAR2(2 BYTE) NULL ,
"OBTAIN_DELIVER_WAY" VARCHAR2(2 BYTE) NULL ,
"VERSION" VARCHAR2(50 BYTE) NULL ,
"REC_FLAG" NUMBER(2) DEFAULT 1  NOT NULL ,
"XML_DATA" CLOB NULL ,
"D_ZZJGDM" VARCHAR2(18 BYTE) NOT NULL ,
"SXBM_SHORT" VARCHAR2(50 BYTE) NOT NULL ,
"INSERTTIME" DATE NULL ,
"RESPONSETIME" DATE NULL ,
"FLAG" NUMBER(10) DEFAULT 0  NULL ,
"SYNC" NUMBER(10) DEFAULT 0  NULL ,
"DWDM" VARCHAR2(50 BYTE) NOT NULL ,
"BYZD1" VARCHAR2(400 BYTE) NULL ,
"BYZD2" VARCHAR2(400 BYTE) NULL ,
"BYZD4" VARCHAR2(4000 BYTE) NULL ,
"BYZD3" VARCHAR2(400 BYTE) NULL ,
"BMMC" VARCHAR2(500 BYTE) NULL ,
"BMZZJGDM" VARCHAR2(9 BYTE) NULL ,
"BYZD" VARCHAR2(2000 BYTE) NULL ,
"SFSXDDDL" VARCHAR2(3 BYTE) NULL ,
"DDDLYHID" VARCHAR2(50 BYTE) NULL ,
"CLZT" VARCHAR2(2 BYTE) NULL ,
"CLSJ" DATE NULL ,
"ID" NUMBER NULL ,
"ISTOSPJC" NUMBER(10) NULL ,
"SXBBH" VARCHAR2(10 BYTE) NULL ,
"SYNCTIME" DATE NULL ,
"SXBBBM" VARCHAR2(50 BYTE) NULL ,
"SXBDBM" VARCHAR2(50 BYTE) NULL ,
"SJSXBM" VARCHAR2(50 BYTE) NULL ,
"SJSXBBH" VARCHAR2(50 BYTE) NULL ,
"WD1" NUMBER NULL ,
"JD1" NUMBER NULL ,
"FILE_PATH" VARCHAR2(200 CHAR) NULL ,
"WD2" NUMBER NULL ,
"JD2" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EX_GDBS_SB
-- ----------------------------
INSERT INTO "RY"."EX_GDBS_SB" VALUES ('S18000021811120001', '00754151201003820011811120001', '00000100200754151216440300', '污水排入排水管网许可证核发', '20171109102156078536', '深圳市城市轨道交通13号', '龙岗区', '3', '深圳市同胜美地实业有限公司', '49', '91440300MA5DJ3T98Q', '魏元山', '10', '360782199506013817', '18588223346', '深圳市龙岗区龙平西路', '深圳市龙岗区龙平西路项目', '排水总平面图;预处理设施材料;施工期限证明;法定授权委托证明书;经办人身份证复印件;组织机构信用代码证或企业营业执照（系统共享）;水质检测报告;法人代表证明书;法人身份证复印件;法人证书（系统共享）;法定代表人身份证（系统共享）;法定代表人证明书（系统共享）;法人授权委托书（系统共享）;代理人身份证（系统共享）;基坑及桩基础阶段施工许可或项目主体施工许可;深圳市水务局排水行政许可业务申请表;', '0', 'S18000021811120001', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '市行政服务大厅西厅,9号综合受理（基建）', '440300', 'S18000021811120001', '居住', null, null, '2018-440326-70-03-716501', '0', '0', '0', '1', '1', null, '007541512', 'S1800002', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, '0', '0', '7541512', '2019-12-22~2020-06-22', '建设项目排水审批', '已审批', '设一座7000*3000*2000三级沉淀池、一座Z11-50S化粪池、2座ZG-3隔油池', 'DN300污水管下游连接现状海德二道、DN400市政污水管的预留检查并(连接管管径DN300)', null, '0', null, '市排水管理处', null, null, '4742', null, '38', null, 'b47a92515e2c4310a5640171eed9655e', 'qz201809141530084274', '00754151201003820013440300', '10个工作日', '111321.7770', '31685.13', '/profile\upload\2019/11/18\9b1beb23cc3c3cbaff7b4e962946f8a9.doc', '129893.94', '30374.71');
INSERT INTO "RY"."EX_GDBS_SB" VALUES ('S18000021811160006', '00754151201003820011811160006', '00000100200754151216440300', '污水排入排水管网许可证核发', '20171109102156078536', '深圳市城市轨道交通15号', '龙岗区', '3', '深圳市鸿腾投资管理有限公司', '49', '91440300788326902U', '侯洪林', '10', '370683199410010956', '18553526991', '深圳市龙岗区龙平西路', '帝豪酒店项目', '排水总平面图;预处理设施材料;水质检测报告;施工期限证明;法定授权委托证明书;经办人身份证复印件;组织机构信用代码证或企业营业执照（系统共享）;法人代表证明书;法人身份证复印件;深圳市水务局排水行政许可业务申请表;法人证书（系统共享）;法定代表人身份证（系统共享）;法定代表人证明书（系统共享）;法人授权委托书（系统共享）;代理人身份证（系统共享）;基坑及桩基础阶段施工许可或项目主体施工许可;', '0', 'S18000021811160006', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '市行政服务大厅西厅,9号综合受理（基建）', '440300', 'S18000021811160006', '居住', null, null, '2015-440300-70-03-067193', '0', '0', '0', '1', '1', null, '007541512', 'S1800002', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, '0', '0', '7541512', '2020-05-22~2020-06-22', '城市排水许可', '已审批', '设一座7000*3000*2000三级沉淀池、一座Z11-50S化粪池、2座ZG-3隔油池', 'DN300污水管下游连接现状海德二道、DN400市政污水管的预留检查并(连接管管径DN300)', null, '0', null, '市排水管理处', null, null, '4744', null, '39', null, '323814470f404228acdbe0b3c858006b', 'qz201809141530084274', '00754151201003820013440300', '10个工作日', '111321.7770', '31685.13', '/profile\upload\2019/11/18\9b1beb23cc3c3cbaff7b4e962946f8a9.doc', '129893.94', '30374.71');
INSERT INTO "RY"."EX_GDBS_SB" VALUES ('S18000021811160007', '00754151201003820011811160007', '00000100200754151216440300', '污水排入排水管网许可证核发', '20171109102156078536', '深圳市城市轨道交通14号', '龙岗区', '3', '深圳市交通公用设施建设中心', '80', '10', '柯昊东', '10', '440883199107091131', '13798499084', '深圳市龙岗区龙平西路', '夜课山庄项目', '法人代表证明书;排水总平面图;预处理设施材料;法人身份证复印件;水质检测报告;施工期限证明;法定授权委托证明书;组织机构信用代码证或企业营业执照（系统共享）;经办人身份证复印件;深圳市水务局排水行政许可业务申请表;基坑及桩基础阶段施工许可或项目主体施工许可;法人证书（系统共享）;法定代表人身份证（系统共享）;法定代表人证明书（系统共享）;法人授权委托书（系统共享）;代理人身份证（系统共享）;', '0', 'S18000021811160007', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '市行政服务大厅西厅,10号综合受理（基建）', '440300', 'S18000021811160007', '居住', null, null, '2016-440300-48-01-102588', '0', '0', '0', '1', '1', null, '007541512', 'S1800002', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, '0', '0', '7541512', '2019-12-25~2020-07-22', '建设项目排水审批', '已审批', '设一座7000*3000*2000三级沉淀池、一座Z11-50S化粪池、2座ZG-3隔油池', 'DN300污水管下游连接现状海德二道、DN400市政污水管的预留检查并(连接管管径DN300)', null, '0', null, '市排水管理处', null, null, '4745', null, '39', null, '323814470f404228acdbe0b3c858006b', 'qz201809141530084274', '00754151201003820013440300', '10个工作日', '111321.7770', '31685.13', '/profile\upload\2019/11/18\9b1beb23cc3c3cbaff7b4e962946f8a9.doc', '129893.94', '30374.71');
INSERT INTO "RY"."EX_GDBS_SB" VALUES ('S18000021811160001', '00754151201003820011811160001', '00000100200754151216440300', '污水排入排水管网许可证核发', '20171109102156078536', '深圳市城市轨道交通16号', '龙岗区', '3', '深圳市住宅工程管理站', '52', '12440300G347792238', '李奋斌', '10', '440582198909226635', '18666299502', '深圳市龙岗区龙平西路', 'xxxx项目', '深圳市水务局排水行政许可业务申请表;法人证书（系统共享）;法定代表人身份证（系统共享）;法定代表人证明书（系统共享）;法人授权委托书（系统共享）;代理人身份证（系统共享）;法人代表证明书;组织机构信用代码证或企业营业执照（系统共享）;预处理设施材料;排水总平面图;施工期限证明;经办人身份证复印件;法定授权委托证明书;法人身份证复印件;基坑及桩基础阶段施工许可或项目主体施工许可;水质检测报告;', '0', 'S18000021811160001', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '市行政服务大厅西厅,11号综合受理（基建）', '440300', 'S18000021811160001', '居住', null, null, '2017-440300-81-01-103214', '0', '0', '0', '1', '1', null, '007541512', 'S1800002', TO_DATE('1-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, '0', '0', '7541512', '2021-11-22~2022-07-22', '城市排水许可', '已审批', '设一座7000*3000*2000三级沉淀池、一座Z11-50S化粪池、2座ZG-3隔油池1', 'DN300污水管下游连接现状海德二道、DN400市政污水管的预留检查并(连接管管径DN3001)', null, '0', null, '市排水管理处', null, null, '4753', null, '39', null, '323814470f404228acdbe0b3c858006b', 'qz201809141530084274', '00754151201003820013440300', '10个工作日', '111321.7770', '31685.13', '/profile\upload\2019/11/18\9b1beb23cc3c3cbaff7b4e962946f8a9.doc', '129893.94', '30374.71');

-- ----------------------------
-- Checks structure for table EX_GDBS_SB
-- ----------------------------
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SBLSH" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SBLSH_SHORT" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SXBM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SXMC" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SXQXBM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SQRLX" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SQRMC" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SQRZJHM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("LXRXM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("LXRSJ" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SBXMMC" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("TJFS" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SBHZH" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SBSJ" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("XZQHDM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("YSBLSH" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("REC_FLAG" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("D_ZZJGDM" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("SXBM_SHORT" IS NOT NULL);
ALTER TABLE "RY"."EX_GDBS_SB" ADD CHECK ("DWDM" IS NOT NULL);
