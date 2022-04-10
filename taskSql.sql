-- 프로젝트 업무만 작성자가 UI_ID 다.
-- https://ninearies.tistory.com/181
-- https://beagle-dev.tistory.com/276

-- 고유번호들 varchar2(20) 이나 유저 아이디만 30

-- 수정과 삭제를 위해서는 고유번호가 반드시 필요하다...

SELECT * FROM TASK_OUTPUT to2;

SELECT * FROM calendar;

SELECT * FROM TASK_ISSUE ti;
select PI_ID, PI_WRITER, PI_TITLE, TO_CHAR(PI_REGDATE, 'YYYY-MM-DD'), PI_STARTDATE, PI_DUEDATE, PI_STATUS from prj_info;

SELECT ti.*, ui.UI_NAME FROM TASK_ISSUE ti, USER_INFO ui 
WHERE ti.TI_WRITER = ui.UI_ID;

SELECT ui.UI_NAME, ui.UI_DEPT,ui.UI_RANK, pi2.PI_TITLE, pu.PU_STATUS 
FROM USER_INFO ui,PRJ_USER pu, PRJ_INFO pi2
WHERE pu.UI_ID = ui.UI_ID
AND pu.PI_ID = pi2.PI_ID
;

SELECT * FROM DEPT_INFO di;



SELECT * FROM PRJ_USER;


SELECT UI_ID FROM USER_INFO ui
WHERE UI_NAME = #{uiName}
AND UI_EMAIL = #{uiEmail}
;

SELECT di.*, nvl(count,'0') count  FROM DEPT_INFO di, 
(SELECT uI_dept, count(*) count FROM USER_INFO ui 
GROUP BY UI_DEPT) ui
WHERE di.DI_DEPT = UI_DEPT(+)
ORDER BY DI_ID
;

SELECT * FROM APPD_DOC ad;

ALTER TABLE DEPT_INFO 

SELECT * FROM users;

SELECT * FROM PRJ_USER pu;


SELECT * FROM PRJ_INFO pi2;

SELECT * FROM PRJ_TASK pt;
SELECT pi.*, ui.UI_NAME, pu.PU_STATUS 
		FROM PRJ_INFO pi, USER_INFO ui 
		WHERE NOT PI_ID IN 
		(SELECT PI_ID FROM PRJ_USER 
		WHERE UI_ID = 'daniel95')
		and pi.PI_WRITER = ui.UI_ID	
		order by pi.PI_ID;
	


SELECT p.*, ui.UI_NAME FROM PRJ_INFO p, USER_INFO ui 
WHERE NOT PI_ID IN 
(SELECT PI_ID FROM PRJ_USER pu 
WHERE UI_ID = 'daniel95')
AND p.PI_WRITER = ui.UI_ID;

SELECT * FROM alarm;

SELECT * FROM USER_INFO ui;

SELECT TO_CHAR(PI_REGDATE,'YYYY-MM-DD') FROM PRJ_INFO pi2;


SELECT  * FROM DEPT_INFO di;

SELECT count(*)
from PRJ_TASK
where  PT_CHARGE LIKE '%' || #{uiDept} || ' ' || #{uiName} || '%'
and PT_ID = #{ptId}


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

SELECT * FROM NOTICE n ORDER BY NT_REGDATE;


SELECT distinct ui.UI_ID, ui.UI_DEPT, ui.ui_Name, pt.PI_ID
		FROM user_info ui, prj_task pt
		WHERE ui.UI_ID = 'test123'
		and pt.pi_id = 'PI00001'
		and ui.ui_id = pt.ui_id; -- 프로젝트도 있어야하니까...


SELECT * FROM prj_task;

SELECT * FROM alarm;

	select pi.PI_ID, PI_TITLE, PI_STARTDATE, 
			PI_DUEDATE, PI_STATUS, UI_NAME  
		from (
		select * from prj_user
		where UI_ID = 'daniel95') pu, PRJ_INFO pi, user_info ui
		where pu.PI_ID = pi.PI_ID 
		and pi.PI_WRITER = ui.UI_ID;

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
	 PI_TITLE varchar2(60),
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

select * from (
	select * from PRJ_TASK where PT_ID = 'PT00041'
) pt, USER_INFO ui
where pt.UI_ID = ui.UI_ID;

SELECT * FROM USER_INFO ui;
SELECT * FROM PRJ_TASK pt;
SELECT * FROM DEPT_INFO di;
SELECT * FROM DEPT_DOC dd;
SELECT * FROM TASK_OUTPUT to2;


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

-- 등록자이거나 내가 업무 담당자인 경우
-- 저는 daniel95 의 아이디를 갖고 있는 개발1팀 양초명입니다.
-- 제 업무 => 제가 작성한 업무 글과 제가 담당하는 업무를 가져온다. 
-- ====> 내가 작성한 글과 내가 담당한 업무를 탭으로 분류
---- 

SELECT * FROM PRJ_TASK
WHERE UI_ID = 'daniel95'
OR PT_CHARGE LIKE '%' ||'개발1팀' || '양초명' || '%'   
;

SELECT * FROM PRJ_TASK
WHERE UI_ID = 'daniel95'
;

SELECT * FROM USER_INFO ui;

SELECT * FROM DEPT_DOC dd;

SELECT * FROM TASK_ISSUE ti;

SELECT * FROM PRJ_TASK pt;


SELECT * FROM PRJ_ISSUE;

SELECT row_number() over(ORDER BY pt_duedate) cnt, PRJ_TASK.*
		from PRJ_TASK
		where 1=1;


SELECT * FROM PRJ_USER pu, user_info ui
WHERE pu.UI_ID  = ui.UI_ID
AND pu.PU_STATUS = '0'
AND pu.PI_ID = #{piId} 
;
-- 프로첵트 참여자 목록과 유저 테이블을 조인해서 프로젝트 참여하고 있는 유저 정보 얻는다.
-- 조건 => PU_STATUS 0 (참여하고있는 상태)

;

SELECT * FROM PRJ_TASK
WHERE PT_CHARGE LIKE '%' ||'개발1팀 ' || '양초명' || '%'   
;

SELECT * FROM PRJ_USER pu;

SELECT * FROM PRJ_TASK pt;



SELECT * FROM PRJ_INFO;


ALTER TABLE PRJ_INFO ADD PI_TITLE varchar2(60);

ALTER TABLE PRJ_INFO modify PI_WRITER INVISIBLE;
ALTER TABLE PRJ_INFO modify PI_STATUS INVISIBLE;


CREATE SEQUENCE prj_seq
	START WITH 1
	MINVALUE 1;
DROP SEQUENCE prj_seq;

INSERT INTO PRJ_INFO values('PI' || LPAD(prj_seq.nextval,5,'0'), 'daniel95', '쌍용 5차 프로젝트', sysdate, '2022-03-05', '2022-04-12', '진행중');
INSERT INTO PRJ_INFO values('PI' || LPAD(prj_seq.nextval,5,'0'), 'asd456', '쌍용 디자인 프로젝트', sysdate, '2022-02-15', '2022-03-12', '진행완료');
INSERT INTO PRJ_INFO values('PI' || LPAD(prj_seq.nextval,5,'0'), 'aaa111', '쌍용 부트캠프 프로젝트', sysdate, '2022-03-20', '2022-05-25', '진행증');
INSERT INTO PRJ_INFO values('PI' || LPAD(prj_seq.nextval,5,'0'), 'ycm95', '쌍용 IOS 프로젝트', sysdate, '2022-04-15', '2022-05-22', '진행전');



SELECT * FROM TASK_OUTPUT;
SELECT * FROM DEPT_INFO di;



-- 프로젝트 참여
CREATE TABLE PRJ_USER(
	UI_ID varchar2(20) REFERENCES USER_INFO(UI_ID),
	PI_ID varchar2(20) REFERENCES PRJ_INFO(PI_ID)
)


SELECT * FROM prj_user;

INSERT INTO PRJ_USER values('daniel95','PI00001');
INSERT INTO PRJ_USER values('asd456','PI00001');
INSERT INTO PRJ_USER values('daniel95','PI00002');
INSERT INTO PRJ_USER values('alsgurdl258','PI00001');


select pi.* from ( 
select * from prj_user
where UI_ID = 'daniel95') pu, PRJ_INFO pi
where pu.PI_ID = pi.PI_ID
	


SELECT * FROM TASK_ISSUE ti;

SELECT * FROM DEPT_DOC dd;

SELECT * FROM PRJ_INFO pi2;

SELECT * FROM TASK_OUTPUT to2;

SELECT * FROM USER_INFO ui;

SELECT * FROM NOTICE n;


select * from user_info
		where 
			UI_NAME like '%테스트봇4%'
		and UI_DEPT like '%%'
		and UI_RANK like '%%'
		and UI_STATUS = '0';


CREATE TABLE Alarm (
	A_ID	VARCHAR2(20) PRIMARY KEY,
	A_FROM	VARCHAR2(30) NOT null, -- "개발1팀 양초명" 형식으로..?
	A_TO	VARCHAR2(30) NOT null,
	A_CONTENT	VARCHAR2(30) NOT null,
	A_CHECKED	number,
	A_REGDATE	Date NOT NULL,
	PI_ID varchar2(20);
);

SELECT * FROM USER_INFO ui;

CREATE SEQUENCE alram_seq
	START WITH 1
	MINVALUE 1;

SELECT pt_status, count(*)
FROM prj_task
GROUP BY PT_STATUS;

SELECT * FROM DEPT_DOC dd;

SELECT * FROM ALARM; 

SELECT * FROM alarm WHERE A_TO = '개발1팀 ' || '양초명'; 

SELECT * FROM PRJ_TASK pt;

UPDATE ALARM 
	SET A_TO = '개발1팀 양초명'
	WHERE A_ID = 'A00002';


create table users(
	username varchar2(50) not null primary key,
	password varchar2(100) not null,
	enabled number(1) not null
);

create table authorities (
	username varchar2(50) not null,
	authority varchar2(50) not null
);


insert into users values ('himan', '7777', 1);
insert into users values ('admin', '1234', 1);
insert into users values ('manager', '1111', 1);

insert into authorities values ('admin', 'USER');
insert into authorities values ('admin', 'USER_MANAGER');
insert into authorities values ('manager', 'ROLE_MANAGER');
insert into authorities values ('manager', 'USER');
insert into authorities values ('admin', 'ROLE_ADMIN');
insert into authorities values ('himan', 'USER');


SELECT * FROM authorities;
SELECT * FROM users;
