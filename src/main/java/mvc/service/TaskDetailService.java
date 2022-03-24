package mvc.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mvc.dao.TaskDetailDao;
import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_OUTPUT;
import mvc.vo.Task_User;

@Service
public class TaskDetailService {

	@Autowired
	private TaskDetailDao dao;
	
	@Value("${toUpload}")
	private String uploadPath;
	
	// 1. 산출물 등록
	public String insertOutput(TASK_OUTPUT output) {
		
		// 1) 메시지
		String msg="등록 실패";
		
		// 2) 업로드한 게 있을 때만 실행
		if(output.gettoReport()!=null && output.gettoReport().length>0) {
		// 3) 파일업로드 중 하나가 문제가 있으면 예외 처리
			try {
				for(MultipartFile mf : output.gettoReport()) {
					String filename = mf.getOriginalFilename(); // 빈 값: 여기까지는 들어온다. 
					System.out.println("파일명: "+ filename);
					if(filename!=null && !filename.equals("")) { // 빈 값:  여기를 못들어오고 있다.
						System.out.println("경로명:"+uploadPath);
						System.out.println("첨부파일명:"+filename);
						File file = new File(uploadPath+filename);
						
						mf.transferTo(file); // 파일업로드 시, 여기까지 잘 됨.
						
						// System.out.println("파일업로드 까지는 잘 됨.");
						
						// setToWriter(uiId) 해야한다
						// 고유번호와 등록일은 알아서. 파일명, 작성자, 프로젝트 업무ID만 새 매개변수로
						
						System.out.println(output.getPtId()+"@@@"+filename+"@@@"+output.getToWriter());
						
						dao.insertOutput(new TASK_OUTPUT(filename, output.getToWriter(), output.getPtId()));
						System.out.println("파일 정보 DB에 들어간겨?");
					}
					
					
				}
				
				msg="등록 성공";
				
			}catch(IllegalStateException e) {
				msg=e.getMessage();
			}catch(IOException e) {
				msg="파일전송오류:"+e.getMessage();
			}catch(Exception e) {
				msg="기타예외:"+e.getMessage();
			} // 기타예외:Mapped Statements collection does not contain value for mvc.dao.TaskDao.insertOutput
			 // 파일은 잘 들어가는데.. DB에 잘 안들어감..
		}
		
		return msg;
	};
	
	
	// 수정한 사항이 없으면 수정 x 프런트 script 쪽에서 처리할 수도 있고 아이디 중복체크 하듯이 처리할 수도 있겠군요
		// => 수정인지 아닌지 체크하는 비용을 생각하면 그냥 업데이트하는게 낫죠 
			 //수정하지 않고 수정버튼 누르는 경우가 얼마나 될까요

	// 2. 업무 정보 수정
	public void updateTask(PRJ_TASK task) {
		// 변경되는게 없도록
		if(task.getPtCharge() == null) {
			task.setPtCharge(dao.getTask(task.getPtId()).getPtCharge());
		}
		
		dao.updateTask(task);
		
	}
	
	
	// 3. 업무 정보 조회
	public Task_User getTask(String ptId) {
		
		
		return dao.getTask(ptId);
	}
	
	// 4. 업무 삭제
	public void delTask(String ptId) {
		
		dao.delTask(ptId);
	};
	
	
	
}
