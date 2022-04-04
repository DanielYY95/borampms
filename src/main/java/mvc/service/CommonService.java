package mvc.service;



import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mvc.dao.CommonDao;
import mvc.vo.CommonDoc;
import mvc.vo.CommonDocSch;
import mvc.vo.CommonFile;



// insert_DD 
// insert_DF -> 첨부파일 정보 DB에 등록
@Service
public class CommonService {

	@Autowired
	private CommonDao dao;
	
	// 부서문서 리스트 조회

	public List<CommonDoc> getCDList(CommonDocSch sch){
		// 1. 전체 갯수
		sch.setCount(dao.totCnt(sch));
		
		// 2. 한번에 보일 페이지 수 초기값 설정
		// - 초기에는 0이고, 5개로 설정 처리
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		// 3. 총 페이지 수
		double totPage = sch.getCount()/(double)sch.getPageSize();
		totPage = Math.ceil(totPage); // 나머지 데이터(행을) 보여준다.
		int totPageInt = (int)(totPage);
		sch.setPageCount(totPageInt);
		
		// 4. 현재 페이지 호출
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		
		// 5. 시작번호
		sch.setFirstPage((sch.getCurPage()-1)*sch.getPageSize()+1);
		
		// 6. 마지막번호
		sch.setLastPage(sch.getCurPage()*sch.getPageSize());
		
		// 7. page block 처리
		//		1) 기본 block 크기 지정
		sch.setBlockSize(5);
				
		//		2) 현재 block의 그룹 번호 = 현재 클릭한 페이지 번호 / blockSize
		int curBlockGrp = (int)Math.ceil(sch.getCurPage() / (double)sch.getBlockSize());
				
		//		3) block 그룹의 시작 페이지 처리
		sch.setFirstBlock((curBlockGrp - 1)*sch.getBlockSize()+1);
				
		//		4) block 그룹의 마지막 페이지 처리
		//		   총 페이지 수를 넘어서는 경우 해당 페이지를 마지막 페이지 번호로 처리
		int lastBlockGrp = curBlockGrp*sch.getBlockSize();
		sch.setLastBlock((lastBlockGrp > sch.getPageCount()) ? sch.getPageCount() : lastBlockGrp);
		
		return dao.getCDList(sch);
	}
	
	// 부서문서 등록 처리부분
	@Value("${upload}")
	private String uploadPath;
	
	public String insertCD(CommonDoc ins) {
		dao.insertCD(ins);
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
						
						dao.insertCF(new CommonFile(filename));
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
