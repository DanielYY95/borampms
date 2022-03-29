package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.DeptDoc;
import mvc.vo.DeptDocSch;
import mvc.vo.DeptFile;

//mvc.dao.DeptDao 
@Repository
public interface DeptDao {

	// 부서문서 데이터 보여주기
	public List<DeptDoc> getDDList(DeptDocSch sch);
	// 부서문서 테이블 등록
	public void insertDD(DeptDoc ins);
	// 부서문서 첨부파일 테이블 등록
	public void insertDF(DeptFile ins);
	// 부서문서 테이블 총 카운트(행)
	public int totCnt(DeptDocSch sch);

}
