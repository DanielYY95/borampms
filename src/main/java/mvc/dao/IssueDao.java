package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.IssueSch;
import mvc.vo.PRJ_ISSUE;
import mvc.vo.TASK_ISSUE;
import mvc.vo.prjIssueSch;

@Repository
public interface IssueDao {
	// 전체 이슈 개수
	public int getTotalCnt(IssueSch sch);
	// 전체 이슈 불러오기
	public List<TASK_ISSUE> getIssueList(IssueSch sch);
	
	// 이슈 등록
	public void insertIssue(TASK_ISSUE ins);
	
	// 이슈 수정
	public void updateIssue(TASK_ISSUE upt);
	
	// 이슈 삭제
	public void deleteIssue(String tiId);
	
	public TASK_ISSUE getIssue(String tiId);
	
	
	// 전체 이슈 개수
	public int getTotalPICnt(prjIssueSch sch);
	// 전체 이슈 불러오기
	public List<PRJ_ISSUE> getPrjIssueList(prjIssueSch sch);
	
	// 이슈 등록
	public void insertPrjIssue(PRJ_ISSUE ins);
	
	// 이슈 수정
	public void updatePrjIssue(PRJ_ISSUE upt);
	
	// 이슈 삭제
	public void deletePrjIssue(String iId);
	
	public PRJ_ISSUE getPrjIssue(String iId);
	
	
	
	
	
}