package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.CommonDoc;
import mvc.vo.CommonDocSch;
import mvc.vo.CommonFile;




//mvc.dao.DeptDao 
@Repository
public interface CommonDao {
	// 공통문서 데이터 보여주기

	public List<CommonDoc> getCDList(CommonDocSch sch);
	// 공통문서 테이블 등록
	public void insertCD(CommonDoc ins);
	// 공통문서 첨부파일 테이블 등록
	public void insertCF(CommonFile ins);
	// 공통문서 테이블 총 카운트(행)
	public int totCnt(CommonDocSch sch);

}
