-- 프로젝트 업무만 작성자가 UI_ID 다.
-- https://ninearies.tistory.com/181
-- https://beagle-dev.tistory.com/276

-- 고유번호들 varchar2(20) 이나 유저 아이디만 30

SELECT * FROM USER_INFO ui;

CREATE TABLE PRJ_TASK (
	PT_ID	VARCHAR2(20) PRIMARY key,
	PT_TITLE	VARCHAR2(100)	,
	PT_CONTENT	VARCHAR2(4000)	,
	PT_STARTDATE	VARCHAR2(20)	,
	PT_DUEDATE	VARCHAR2(20),
	PT_CHARGE	VARCHAR2(500)	,
	PT_TYPE	VARCHAR2(100)	,
	PT_STATUS	VARCHAR2(30),
	PT_GUIDECONTENT	VARCHAR2(4000),
	UI_ID	VARCHAR2(30) REFERENCES user_info(UI_ID),
	PI_ID	VARCHAR2(20) REFERENCES prj_info(PI_ID)
);



CREATE TABLE TASK_OUTPUT (
	TO_ID	VARCHAR2(20)	PRIMARY key	,
	TO_FILE	VARCHAR2(100)	,
	TO_WRITER	VARCHAR2(30)	,
	TO_REGDATE	DATE	,
	PT_ID	VARCHAR2(20) REFERENCES prj_task(PT_ID)
);

create sequence to_seq
	start with 1
	minvalue 1
	maxvalue 99999
;

CREATE TABLE TASK_GUIDE (
	TG_ID	VARCHAR2(20)	PRIMARY key,
	PT_ID	VARCHAR2(20)	REFERENCES prj_task(PT_ID),
	TG_FILE	VARCHAR2(100)	,
	TG_WRITER	VARCHAR2(30)	,
	TG_REGDATE	DATE
);


CREATE TABLE PRJ_INFO (
	PI_ID	VARCHAR2(20)	PRIMARY key,
	PI_WRITER	VARCHAR2(30)	,
	PI_REGDATE	DATE	,
	PI_STARTDATE	VARCHAR2(20)	,
	PI_DUEDATE	VARCHAR2(20)	,
	PI_STATUS	VARCHAR2(30)	
);

DROP TABLE TASK_HISTORY;

CREATE TABLE TASK_CHECK (
	TC_ID	VARCHAR2(20)	PRIMARY key,
	PT_ID	VARCHAR2(20)	REFERENCES prj_task(PT_ID),
	TC_CHECK	VARCHAR2(200)	,
	TC_WRITER	VARCHAR2(30)	,
	TC_REGDATE	DATE	
);

CREATE TABLE TASK_HISTORY (
	TH_ID	VARCHAR2(20)	PRIMARY key,
	TH_WRITER	VARCHAR2(30)	,
	TH_CONTENT	VARCHAR2(200)	,
	TH_REGDATE	DATE	,
	PT_ID	VARCHAR2(20) REFERENCES prj_task(PT_ID)
);

CREATE TABLE USER_INFO (
	UI_ID	VARCHAR2(30) PRIMARY key,
	UI_PW	VARCHAR2(30),
	UI_NAME	VARCHAR2(100),
	UI_EMAIL VARCHAR2(100),
	UI_PHONE VARCHAR2(20),
	UI_BIRTH VARCHAR2(20),
	UI_REGDATE DATE,
	UI_PIC	VARCHAR2(100),
	UI_INTRO VARCHAR2(500),
	UI_RANK	VARCHAR2(20),
	UI_DEPT	VARCHAR2(20),
	UI_STATUS number
);

DROP TABLE USER_INFO CASCADE constraints;
ALTER TABLE USER_INFO drop constraint ;

SELECT * FROM user_constraints; -- 제약조건 조회


CREATE TABLE COMPANY_LIST (
	CL_ID	VARCHAR2(20),
	CL_NAME	VARCHAR2(100),
	CL_REGDATE	DATE,
	CL_STATUS	NUMBER	
);

--- 외래키 부여
ALTER TABLE USER_INFO ADD CONSTRAINT fk_1 FOREIGN KEY (
	UI_DEPT) REFERENCES dept_info(DI_ID);

-- 삭제
ALTER TABLE USER_INFO DROP CONSTRAINT fk_1;


INSERT INTO user_info VALUES (
	'aaa123', '1111', '테스트봇1', 
	'aaa123@naver.com', '01012345678', '1995-01-01', sysdate,
	'',
	'',
	'',
	'',
	0
	);

SELECT * FROM USER_INFO;
SELECT * FROM PRJ_TASK;
SELECT * FROM PRJ_INFO;
SELECT * FROM TASK_OUTPUT;

