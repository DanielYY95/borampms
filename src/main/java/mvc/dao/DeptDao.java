package mvc.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import mvc.vo.DEPT_DOC;
import mvc.vo.DEPT_FILE;

//mvc.dao.DeptDao 
@Repository
public interface DeptDao {
	// 부서문서 데이터 보여주기
	public ArrayList<DEPT_DOC> get_DD_List(DEPT_DOC sch);
	// 부서문서 테이블 등록
	public void insert_DD(DEPT_DOC ins);
	// 부서문서 첨부파일 테이블 등록
	public void insert_DF(DEPT_FILE ins);
}
