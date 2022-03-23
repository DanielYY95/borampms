SELECT * FROM tab;


SELECT * FROM user_info;

SELECT * FROM prj_task;



SELECT * FROM user_info;

SELECT * FROM prj_info;

SELECT * FROM prj_task;

DELETE prj_task;

CREATE SEQUENCE task_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 99999
	INCREMENT BY 1;
DROP SEQUENCE task_seq;

INSERT INTO prj_task VALUES(
	'PT'||lpad(task_seq.nextval,5,0),
	'업무 테스트 제목'||task_seq.nextval,
	'업무 테스트 내용'||task_seq.nextval,
	'2022-03-03',
	'2022-03-07',
	'테스트봇1',
	'테스트 분류',
	'테스트 진행도',
	'테스트 가이드',
	'aaa123',
	'PI00001'	
);


select *
from (
	select rownum cnt, prj_task.*
	from prj_task
	where 1=1
	and pt_title like '%'||''||'%'
	and pt_charge like '%'||''||'%'
)
where cnt between 1 and 5