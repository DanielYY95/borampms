package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.APPD_DOC;
import mvc.vo.APPD_DOC_SCH;
import mvc.vo.USER_INFO;

@Repository
public interface AppdDocDao {

	// 부서문서 데이터 보여주기
	public List<APPD_DOC> getADList(APPD_DOC_SCH sch);
	// 부서문서 테이블 등록
	public void insertAD(APPD_DOC ins);
	// 부서문서 테이블 수정
	public void updateAD(APPD_DOC ins);
	// 부서문서 테이블 총 카운트(행)
	public int totCnt(APPD_DOC_SCH sch);
	public List<USER_INFO> getDeptUserList(String usid);

	}