
/*-- 2019-9-16 supervise*/

/* TABLE TB_ENCLOSURE*/
CREATE TABLE "RY"."TB_ENCLOSURE" (
"ENCLOSURE_ID" VARCHAR2(11 CHAR) NOT NULL ,
"ENCLOSURE_LOCATION" VARCHAR2(20 CHAR) NOT NULL ,
"FEEDBACK_ID" VARCHAR2(11 CHAR) NOT NULL ,
PRIMARY KEY ("ENCLOSURE_ID")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;


/* TABLE TB_FEEDBACK*/
CREATE TABLE "RY"."TB_FEEDBACK" (
"FEEDBACK_ID" VARCHAR2(11 CHAR) NOT NULL ,
"TASK_NUMBER" VARCHAR2(11 CHAR) NOT NULL ,
"FEEDBACK_INFORMATION" VARCHAR2(500 CHAR) NOT NULL ,
"FEEDBACK_TIME" VARCHAR2(10 CHAR) NOT NULL ,
PRIMARY KEY ("FEEDBACK_ID")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;
ALTER TABLE "RY"."TB_FEEDBACK" ADD CHECK ("FEEDBACK_ID" IS NOT NULL);

ALTER TABLE "RY"."TB_FEEDBACK" ADD CHECK ("TASK_NUMBER" IS NOT NULL);

ALTER TABLE "RY"."TB_FEEDBACK" ADD CHECK ("FEEDBACK_INFORMATION" IS NOT NULL);

ALTER TABLE "RY"."TB_FEEDBACK" ADD CHECK ("FEEDBACK_TIME" IS NOT NULL);


/* TABLE TB_HOUSE*/

CREATE TABLE "RY"."TB_HOUSE" (
"HOUSE_NUMBER" VARCHAR2(11 CHAR) NOT NULL ,
"HOUSE_NAME" VARCHAR2(5 CHAR) NOT NULL ,
"HOUSE_REGION" VARCHAR2(8 CHAR) NOT NULL ,
"HOUSE_STREET" VARCHAR2(11 CHAR) NOT NULL ,
"HOUSE_BASIN" VARCHAR2(5 CHAR) NOT NULL ,
"HOUSE_SYSTEM" VARCHAR2(5 CHAR) NOT NULL ,
"HOUSE_TYPE" VARCHAR2(5 CHAR) NOT NULL ,
"HOUSE_POINT" VARCHAR2(5 CHAR) NOT NULL ,
"HOUSE_LONGITUDE" NUMBER(6,3) NOT NULL ,
"HOUSE_LATITUDE" NUMBER(6,3) NOT NULL ,
"HOUSE_CONNECTING" VARCHAR2(500 CHAR) NOT NULL ,
"HOUSE_W" NUMBER(4) NOT NULL ,
"HOUSE_RULE" VARCHAR2(11 CHAR) NOT NULL ,
PRIMARY KEY ("HOUSE_NUMBER")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;
ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_NUMBER" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_NAME" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_REGION" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_STREET" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_BASIN" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_SYSTEM" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_TYPE" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_POINT" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_LONGITUDE" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_LATITUDE" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_CONNECTING" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_W" IS NOT NULL);

ALTER TABLE "RY"."TB_HOUSE" ADD CHECK ("HOUSE_RULE" IS NOT NULL);


/* TABLE TB_PICTURE*/
CREATE TABLE "RY"."TB_PICTURE" (
"PICTURE_ID" VARCHAR2(11 CHAR) NOT NULL ,
"PICTURE_LOCATION" VARCHAR2(20 CHAR) NOT NULL ,
"FEEDBACK_ID" VARCHAR2(11 CHAR) NOT NULL ,
PRIMARY KEY ("PICTURE_ID")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;
ALTER TABLE "RY"."TB_PICTURE" ADD CHECK ("PICTURE_ID" IS NOT NULL);

ALTER TABLE "RY"."TB_PICTURE" ADD CHECK ("PICTURE_LOCATION" IS NOT NULL);

ALTER TABLE "RY"."TB_PICTURE" ADD CHECK ("FEEDBACK_ID" IS NOT NULL);



/* TABLE TB_RULE*/
CREATE TABLE "RY"."TB_RULE" (
"RULE_NUMBER" VARCHAR2(11 CHAR) NOT NULL ,
"RULE_CONTENT" VARCHAR2(100 CHAR) NOT NULL ,
PRIMARY KEY ("RULE_NUMBER")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;
ALTER TABLE "RY"."TB_RULE" ADD CHECK ("RULE_NUMBER" IS NOT NULL);

ALTER TABLE "RY"."TB_RULE" ADD CHECK ("RULE_CONTENT" IS NOT NULL);


/* TABLE TB_STAFF*/

CREATE TABLE "RY"."TB_STAFF" (
"STAFF_NUMBER" VARCHAR2(11 CHAR) NOT NULL ,
"STAFF_NAME" VARCHAR2(10 CHAR) NOT NULL ,
"STAFF_BIRTHDAY" VARCHAR2(20 CHAR) NOT NULL ,
"STAFF_GENDER" VARCHAR2(2 CHAR) NOT NULL ,
"STAFF_TELEPHONE" VARCHAR2(11 CHAR) NOT NULL ,
"STAFF_POST" VARCHAR2(11 CHAR) NOT NULL ,
"STAFF_DEPT" VARCHAR2(11 CHAR) NOT NULL ,
"STAFF_W" NUMBER(5) NOT NULL ,
PRIMARY KEY ("STAFF_NUMBER")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;
ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_NUMBER" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_NAME" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_BIRTHDAY" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_GENDER" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_TELEPHONE" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_POST" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_DEPT" IS NOT NULL);

ALTER TABLE "RY"."TB_STAFF" ADD CHECK ("STAFF_W" IS NOT NULL);



/* TABLE TB_TASK*/
CREATE TABLE "RY"."TB_TASK" (
"TASK_NUMBER" VARCHAR2(11 CHAR) NOT NULL ,
"TASK_NAME" VARCHAR2(8 CHAR) NOT NULL ,
"TASK_REGION" VARCHAR2(8 CHAR) NOT NULL ,
"TASK_STREET" VARCHAR2(11 CHAR) NOT NULL ,
"TASK_PARTITION" VARCHAR2(11 CHAR) NOT NULL ,
"TASK_GRADE" VARCHAR2(5 CHAR) NOT NULL ,
"TASK_TYPE" VARCHAR2(10 CHAR) NOT NULL ,
"TASK_LATITUDE" NUMBER(6,3) NOT NULL ,
"TASK_CONNECTING" VARCHAR2(500 CHAR) NOT NULL ,
"TASK_TIME" VARCHAR2(20 CHAR) NOT NULL ,
"TASK_HOUSE" VARCHAR2(11 CHAR) NULL ,
"TASK_STAFF" VARCHAR2(11 CHAR) NULL ,
PRIMARY KEY ("TASK_NUMBER")
)
PCTFREE 10
INITRANS 1
STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	BUFFER_POOL DEFAULT
)

TABLESPACE "RY"
LOGGING
NOCOMPRESS
NOCACHE
;

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_NUMBER" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_NAME" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_REGION" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_STREET" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_PARTITION" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_GRADE" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_TYPE" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_LATITUDE" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_CONNECTING" IS NOT NULL);

ALTER TABLE "RY"."TB_TASK" ADD CHECK ("TASK_TIME" IS NOT NULL);




/*INSERT SYS_MENU*/
INSERT INTO "RY"."SYS_MENU" VALUES ('2084', '任务管理', '2088', '0', '/supervise/task/task', 'menuItem', 'C', '0', NULL, '#', 'admin', TO_DATE('2019-09-08 16:51:23', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'op');
INSERT INTO "RY"."SYS_MENU" VALUES ('2085', '已完成任务', '2088', '0', '/supervise/complete/complete', 'menuItem', 'C', '0', NULL, '#', 'admin', TO_DATE('2019-09-08 16:54:55', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'op');
INSERT INTO "RY"."SYS_MENU" VALUES ('2086', '任务统计', '2088', '0', '/supervise/statistics/statistics', 'menuItem', 'C', '0', NULL, '#', 'admin', TO_DATE('2019-09-08 16:55:51', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'op');
INSERT INTO "RY"."SYS_MENU" VALUES ('2087', '数据管理', '2088', '0', '/supervise/data/data', 'menuItem', 'C', '0', NULL, '#', 'admin', TO_DATE('2019-09-08 16:56:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'op');
INSERT INTO "RY"."SYS_MENU" VALUES ('2088', '排水监督检查', '2040', '0', '#', 'menuItem', 'C', '0', NULL, '#', 'admin', TO_DATE('2019-09-08 17:05:26', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, 'op');

/*INSERT TB_ENCLOSURE*/
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('1','/img/profile.jpg','1');
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('2','/img/profile.jpg','1');
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('3','/img/pay.png','2');

/*INSERT TB_FEEDBACK*/
INSERT INTO "RY.TB_FEEDBACK" VALUES ('2','1','维修很到位！','1996-3-22');
INSERT INTO "RY.TB_FEEDBACK" VALUES ('1','633710','检查不到位！','1997-3-21');


/*INSERT TB_HOUSE*/
INSERT INTO "RY.TB_HOUSE" VALUES ('1'	,'明日广场',	'福田区',	'南山街道'	,'深圳河流域'	,'合流支管',	'生活污水',	'市政水源',	'136.3'	,'20.3',	'管道老化',	'5',	'1');
INSERT INTO "RY.TB_HOUSE" VALUES ('2',	'新星小区',	'南山区',	'南头街道'	,'大亚湾',	'出水口',	'餐饮污水',	'市政水源',	'100.3',	'20.3',	'水管破裂',	'10',	'1');
INSERT INTO "RY.TB_HOUSE" VALUES ('3	','嘉禾饭店',	'罗湖区	','沙河街道',	'龙岗河',	'合流干管',	'自然污水',	'市政水源'	,'122.3'	,'20.3',	'排水堵塞',	'10',	'1');


/*INSERT TB_PICTURE*/
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('3','/img/profile.jpg','2');
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('2','/img/profile.jpg','1');
INSERT INTO "RY.TB_ENCLOSURE" VALUES ('1','/img/pay.png','1');


/*INSERT TB_RULE*/
INSERT INTO "RY.TB_RULE" VALUES ('390336','权值最小');
INSERT INTO "RY.TB_RULE" VALUES ('1','权值最大');


/*INSERT TB_STAFF*/
INSERT INTO "RY.TB_STAFF" VALUES ('338470','张天志'	,'2019-09-11',	'女',	'13505023695'	,'维修人员'	,'维修部门'	,'20');
INSERT INTO "RY.TB_STAFF" VALUES ('1',	'王小明',	'2019-09-18',	'男',	'13505021634',	'检查人员',	'检查部门',	'1');
INSERT INTO "RY.TB_STAFF" VALUES ('298470',	'李四发',	'2019-09-11'	,'男',	'13074966125',	'维修人员'	,'维修部门',	'20');


/*INSERT TB_TASK*/
INSERT INTO "RY.TB_TASK" VALUES ('633723'	,'管道任务',	'福田区',	'沙河街道',	'明日广场3号楼1103'	,'中',	'生活污水',	'122.33',	'排水管网检查、维修'	,'2019-09-11',NULL ,NULL);
INSERT INTO "RY.TB_TASK" VALUES ('1',	'堵塞任务',	'南山区',	'南山街道',	'阳光大楼A幢323号',	'高'	,'生活污水',	'163.336',	'排水管网检查、安装',	'2019-09-18'	,'2'	,'298470');
INSERT INTO "RY.TB_TASK" VALUES ('633710',	'更换任务',	'罗湖区'	,'南头街道',	'开源饭店',	'中',	'餐饮污水',	'110.33',	'排水管网更换',	'2019-09-11',	'3',	'298470');