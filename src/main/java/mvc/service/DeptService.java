package mvc.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mvc.dao.DeptDao;
import mvc.vo.DEPT_DOC;
import mvc.vo.DEPT_FILE;
// insert_DD 
// insert_DF -> 첨부파일 정보 DB에 등록
@Service
public class DeptService {

	@Autowired
	private DeptDao dao;
	
	// 부서문서 리스트 조회
	public ArrayList<DEPT_DOC> get_DD_List(DEPT_DOC sch){
		return dao.get_DD_List(sch);
	}
	
	@Value("${upload}")
	private String uploadPath;
	
	public String insert_DD(DEPT_DOC ins) {
		dao.insert_DD(ins);
		String msg = "등록성공";
		// 특정한 위치에 첨부파일 업로드
		if(ins.getReport() != null && ins.getReport().length > 0) {
			try {
				for(MultipartFile mf : ins.getReport()) {
					String filename = mf.getOriginalFilename();
					if(filename != null && !filename.equals("")) {
						System.out.println("경로명:"+uploadPath);
						System.out.println("첨부파일명:"+filename);
						File file = new File(uploadPath + filename);
						
						mf.transferTo(file);
						
						// 첨부파일 db에 등록
						dao.insert_DF(new DEPT_FILE(filename));
					}
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = e.getMessage();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = "파일전송오류:" + e.getMessage();
			} catch(Exception e) {
				msg = "기타예외:" + e.getMessage();
			}
			
		}
		return msg;
	}
}
