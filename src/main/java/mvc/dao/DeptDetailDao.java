package mvc.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import mvc.vo.DeptDoc;

// mvc.dao.DeptDetailDao
@Repository
public interface DeptDetailDao {
	// # 문서관리 
	// 1. 부서문서 데이터 (행)별로 상세보기
	public DeptDoc getDetailList(String ddId);
	// 1-1. 파일 데이터
	public ArrayList<String> getFileInfo(String dfId);
	// 2. 수정(제목, 내용, 수정일(작성일))
	public void updateDept(DeptDoc upt);
	// 3. 삭제
	public void deleteDept(String ddId);
}
