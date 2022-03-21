package mvc.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.DeptDao;
import mvc.vo.DeptDoc;

// insert_DD 
// insert_DF -> 첨부파일 정보 DB에 등록
@Service
public class DeptService {

	@Autowired
	private DeptDao dao;
	
	// 부서문서 리스트 조회
	public List<DeptDoc> getDDList(){
		return dao.getDDList();
	}
	
}
