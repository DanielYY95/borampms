package mvc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadViewer extends AbstractView {

	// 다운로드할 폴더 위치 지정(config에서 호출)
	@Value("${upload}")
	private String upload;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
				HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// 1. 서버에서 가지고 있는 파일 객체 만들기
		// 		1) 파일 전송 컨트롤러에 넘겨온 파일 이름을 모델명으로 설정
		//			d.addAttribute("downloadfile", 파일명);
		String fname = (String)model.get("downloadfile");
		//		2) 경로와 파일명을 조합하여 파일 객체 생성
		File file = new File(upload+fname);
		System.out.println("# file viewer 를 통한 다운로드 파일 정보 #");
		System.out.println("파일정보 : "+file.getPath());
		System.out.println("파일크기 : "+file.length());
		
		// 2. response 객체를 통해 파일 client에 전달하기
		//		1) 파일 다운로드를 처리하기 위한 contentType 지정
		response.setContentType("application/download; charset=UTF-8");
		//		2) 파일 크기
		response.setContentLength((int)file.length()); // long -> int 형변환
		//		3) 파일명이 한글인 경우 깨짐 현상 방지, +(공백 encoding)을 " "로 대체
		fname = URLEncoder.encode(fname, "utf-8").replaceAll("\\+", " ");
		//		4) response의 header 정보에 파일명 전송 시 encoding 형식을 binary로 설정
		// filename="파일명"
		response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		// 3. File 객체를 읽어와 response의 OutputStream으로 전달하기
		FileInputStream fis = new FileInputStream(file); // 서버의 파일을 stream으로 읽어와서
		OutputStream out = response.getOutputStream();   // 네트워크로 전달 가능하도록 response의 outputstream 객체를 활용
		//		FileInputStream을 통해 파일 객체를 읽어온 것을 OutputStream으로 복사, 반응값으로 전달
		FileCopyUtils.copy(fis, out);
		// 4. flush (자원 해제)
		out.flush();
		
	}

}
