package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.DeptDoc;

//mvc.dao.DeptDao 
@Repository
public interface DeptDao {
	// 부서문서 데이터 보여주기
	public List<DeptDoc> getDDList();
	
}
