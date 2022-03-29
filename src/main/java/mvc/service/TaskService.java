package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.TaskDao;
import mvc.vo.PRJ_TASK;
import mvc.vo.TaskSch;

@Service
public class TaskService {
	@Autowired
	private TaskDao dao;
	
	public List<PRJ_TASK> getTaskList(TaskSch sch) {
		// 1. 전체 업무 건수를 TaskSch 객체에 설정 : 모델 데이터로 활용
		sch.setCount(dao.getTotalCnt(sch));
		
		// 2. 한 번에 출력하는 페이지 수 초기값 설정
		if(sch.getPageSize() == 0) {
			sch.setPageSize(5);
		}
		
		// 3. 전체 페이지 수 처리
		double totalPage = sch.getCount() / (double)sch.getPageSize();
		totalPage = Math.ceil(totalPage);	// 나머지가 있는 경우 페이지를 1장 추가하여 보여준다.
		int totalPageInt = (int)totalPage;
		sch.setPageCount(totalPageInt);
		
		// 4. 현재 페이지 호출
		// 		초기값 설정
		if(sch.getCurPage() == 0) {
			sch.setCurPage(1);
		}
		
		// 5. 시작번호 처리
		sch.setFirstPage((sch.getCurPage()-1)*sch.getPageSize()+1);
		
		// 6. 마지막 번호 처리
		sch.setLastPage(sch.getCurPage()*sch.getPageSize());

		// 7. page block 처리
		//		1) 기본 block 크기 지정
		sch.setBlockSize(5);
		
		//		2) 현재 block의 그룹 번호 = 현재 클릭한 페이지 번호 / blockSize
		int curBlockGrp = (int)Math.ceil(sch.getCurPage() / (double)sch.getBlockSize());
		
		//		3) block 그룹의 시작 페이지 처리
		sch.setFirstBlock((curBlockGrp - 1)*sch.getBlockSize()+1);
		
		//		4) block 그룹의 마지막 페이지 처리
		//			총 페이지 수를 넘어서는 경우 해당 페이지를 마지막 페이지 번호로 처리
		int lastBlockGrp = curBlockGrp*sch.getBlockSize();
		sch.setLastBlock((lastBlockGrp > sch.getPageCount()) ? sch.getPageCount() : lastBlockGrp);
		
		
		return dao.getTaskList(sch);
	}
	
	
	public String insertTask(PRJ_TASK ins) {
		dao.insertTask(ins);
		String msg = "업무 등록 성공";
		
		return msg;
	}
}