package mvc.dao;

import org.springframework.stereotype.Repository;

import mvc.vo.APPD_DOC;

@Repository
public interface AppdDocDetailDao {
	// # 문서관리
	// 1. 부서문서 데이터 (행)별로 상세보기
	public APPD_DOC getDetailList(String adId);
	// 2. 수정(제목, 내용, 수정일(작성일))
	public void updateAppdDoc(APPD_DOC upt);
	// 3. 삭제
	public void deleteAppdDoc(String adId);
	// 4. ㄱㅕㄹㅈㅔ
	public void appdDocument(String adId);
}