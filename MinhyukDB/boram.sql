/* 부서정보 테이블 */
CREATE TABLE DEPT_INFO(
	DI_ID VARCHAR2(20) PRIMARY KEY,
	DI_DEPT VARCHAR2(30),
	DI_STATUS VARCHAR2(20)
);
INSERT INTO DEPT_INFO VALUES('7', '개발팀', '존재');
SELECT*FROM DEPT_INFO;
/* 부서문서 테이블 */
CREATE TABLE DEPT_DOC(
	DD_ID VARCHAR2(20) PRIMARY KEY,
	DD_TITLE VARCHAR2(50),
	DD_WRITER VARCHAR2(15),
	DD_DEPT VARCHAR2(30),
	DD_CONTENT VARCHAR2(1000),
	DD_REGDATE DATE,
	DI_ID VARCHAR2(20)
);
DROP TABLE DEPT_DOC;
INSERT INTO DEPT_DOC VALUES(seq_dd.nextval, '요구사항정의서33','홍길동','기획팀','확인해주세요',sysdate,'1');
SELECT*FROM DEPT_DOC;
/* 부서문서 테이블 수정 */
UPDATE DEPT_DOC 
SET DD_TITLE = '호호',
	DD_CONTENT = '랄라',
	DD_REGDATE = SYSDATE 
WHERE DD_ID = '1';
/* 부서문서 테이블 삭제 */
DELETE FROM DEPT_DOC WHERE DD_ID = '3';
/* 부서문서 시퀀스 생성 */
CREATE SEQUENCE seq_dd
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE;
/* 부서문서 시퀀스 삭제 */
DROP SEQUENCE seq_dd;
/* 부서파일함 테이블 */
CREATE TABLE DEPT_BOX(
	DB_ID VARCHAR2(20),
	DB_WRITER VARCHAR2(15),
	DB_FILE VARCHAR2(300),
	DB_REGDATE DATE,
	DI_ID VARCHAR2(20)
);
/* 부서문서 첨부파일 */
CREATE TABLE DEPT_FILE(
	DF_ID VARCHAR2(20),
	DF_FILE VARCHAR2(300),
	DF_REGDATE DATE,
	DD_ID VARCHAR2(20)
);
DROP TABLE DEPT_FILE;
INSERT INTO DEPT_FILE VALUES(seq_df.nextval,'하하.png',sysdate,seq_dd.currval);
SELECT*FROM dept_file;

/* 부서문서 첨부파일 시퀀스 생성 */
CREATE SEQUENCE seq_df
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE;
/* 부서문서 첨부파일 시퀀스 삭제 */
DROP SEQUENCE seq_df;
/* 공통문서 테이블*/
CREATE TABLE COMMON_DOC(
	CD_ID VARCHAR2(20),
	CD_TITLE VARCHAR2(50),
	CD_WRITER VARCHAR2(15),
	CD_CONTENT VARCHAR2(1000),
	CD_REGDATE DATE,
	DI_ID VARCHAR2(20)
);
/* 공통문서 첨부파일 */
CREATE TABLE COMMON_FILE(
	CF_ID VARCHAR2(20),
	CF_FILE VARCHAR2(300),
	CF_REGDATE DATE,
	CD_ID VARCHAR2(20)
);
select * from Dept_Doc where DD_ID = '1';
SELECT * FROM dept_file WHERE DD_id = '1';