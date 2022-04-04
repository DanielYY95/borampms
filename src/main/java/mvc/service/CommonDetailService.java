package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.CommonDetailDao;
import mvc.vo.CommonDoc;

@Service
public class CommonDetailService {

	@Autowired
	private CommonDetailDao dao;
	// 1. 부서문서 데이터 (행)별로 상세보기
	public CommonDoc getDetailList(String cdId) {
		CommonDoc cd = dao.getDetailList(cdId);
		cd.setFnames(dao.getFileInfo(cdId));
		return cd;
	}
	// 2. 수정
	public void updateCommon(CommonDoc upt) {
		dao.updateCommon(upt);
	}
	// 3. 삭제
	public void deleteCommon(String cdId) {
		dao.deleteCommon(cdId);
	}
}
