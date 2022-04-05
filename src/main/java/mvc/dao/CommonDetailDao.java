package mvc.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import mvc.vo.CommonDoc;


// mvc.dao.CommonDetailDao
@Repository
public interface CommonDetailDao {
	// # 문서관리 
	// 1. 공통문서 데이터 (행)별로 상세보기
	public CommonDoc getDetailList(String cdId);
	// 1-1. 파일 데이터
	public ArrayList<String> getFileInfo(String cfId);
	// 2. 수정(제목, 내용, 수정일(작성일))
	public void updateCommon(CommonDoc upt);
	// 3. 삭제
	public void deleteCommon(String cdId);
}
