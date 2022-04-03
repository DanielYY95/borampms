package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.AppdDocDetailDao;
import mvc.vo.APPD_DOC;

@Service
public class AppdDocDetailService {

	@Autowired
	private AppdDocDetailDao dao;
	// 1. 부서문서 데이터 (행)별로 상세보기
	public APPD_DOC getDetailList(String adId) {
		APPD_DOC ad = dao.getDetailList(adId);
		return ad;
	}
	// 2. 수정
	public void updateAppdDoc(APPD_DOC upt) {
		dao.updateAppdDoc(upt);
	}
	// 3. 삭제
	public void deleteAppdDoc(String adId) {
		dao.deleteAppdDoc(adId);
	}
	// 4. 결재
	public void appdDocument(String adId) {
		dao.appdDocument(adId);
	}
	// 5.반려
	public void returnDocument(String adId) {
		dao.returnDocument(adId);
	}
}
