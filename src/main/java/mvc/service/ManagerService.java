package mvc.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.ManagerDao;
import mvc.vo.DeptInfo;
import mvc.vo.Notice;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;
import mvc.vo.UserInfo;


@Service
public class ManagerService {

	@Autowired
	private ManagerDao dao;
	
	public ArrayList<UserInfo> getUserList(){
		
		
		return dao.getUserList();
	};
	
	public USER_INFO getUser(String uiId) {
		
		return dao.getUser(uiId);
	};
	
	public void uptCustomer(USER_INFO user) {
		
		
		dao.uptCustomer(user);
	};
	
	public void delCustomer(String uiId) {
		
		dao.delCustomer(uiId);
	};
	
	public ArrayList<USER_INFO> searchUser(USER_INFO user){
		
		if(user.getUiDept().equals("전체")) user.setUiDept("");
		if(user.getUiRank().equals("전체")) user.setUiRank("");

		return dao.searchUser(user);
	};
	
	
	
	
	
	public ArrayList<DeptInfo> getDeptList(){
		
		
		return dao.getDeptList();
	}
	
	public void addDept(DeptInfo dept) {
		
		dao.addDept(dept);
	}
	
	public void uptDept(DeptInfo dept) {
		
		dao.uptDept(dept);
	};
	
	public DeptInfo getDept(String diId) {
		
		return dao.getDept(diId);
	};
	
	
	
	
	
	public ArrayList<PRJ_INFO> getPrjList(){
		
		
		return dao.getPrjList();
	};
	
	public void uptPrj(PRJ_INFO prj) {
		
		dao.uptPrj(prj);
	};
	
	public PRJ_INFO getPrj(String piId) {
		
		
		return dao.getPrj(piId);
	};
	
	public ArrayList<PRJ_INFO> searchPrj(PRJ_INFO prj){
		
		return dao.searchPrj(prj);
	};
	
	
	





	
	public ArrayList<PRJ_USER> getPrjUserList(){
		
	
		return dao.getPrjUserList();
	};
	
	public void uptPrjUser(PRJ_USER sch) {
		
		dao.uptPrjUser(sch);
	};
	
	public PRJ_USER getPrjUser(String puId) {
		
		return dao.getPrjUser(puId);
	};
	
	public ArrayList<PRJ_USER> searchPrjUser(PRJ_USER sch){
		
		if(sch.getUiDept() != null && sch.getUiDept().equals("전체")) {
			
				sch.setUiDept("");
		}
		

		
		return dao.searchPrjUser(sch);
	};
	
	
	
	// 공지사항
	
	public ArrayList<Notice> getNoticeList(Notice sch) {
		// 1. 전체 업무 건수를 TaskSch 객체에 설정 : 모델 데이터로 활용
		sch.setCnt(dao.getTotalCnt(sch));
		
		// 2. 한 번에 출력하는 페이지 수 초기값 설정
		if(sch.getPageSize() == 0) {
			sch.setPageSize(10);
		}
		
		// 3. 전체 페이지 수 처리
		double totalPage = sch.getCnt() / (double)sch.getPageSize();
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
		
		
		return dao.getNoticeList(sch);
	}
	public void insertNotice(Notice ins) {
		dao.insertNotice(ins);
	}
	
	
}