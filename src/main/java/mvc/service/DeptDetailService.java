package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.DeptDetailDao;
import mvc.vo.DeptDoc;

@Service
public class DeptDetailService {

	@Autowired
	private DeptDetailDao dao;
	// 1. 부서문서 데이터 (행)별로 상세보기
	public DeptDoc getDetailList(String ddId) {
		return dao.getDetailList(ddId);
	}
	// 2. 수정
	public void updateDept(DeptDoc upt) {
		dao.updateDept(upt);
	}
	// 3. 삭제
	public void deleteDept(String ddId) {
		dao.deleteDept(ddId);
	}
}
