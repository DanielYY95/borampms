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
	// �ٿ�ε��� ���� ��ġ ����(config���� ȣ��)
	@Value("${upload}")
	private String upload;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, 
				HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// 1. �������� ������ �ִ� ���� ��ü �����
		// 		1) ���� ���� ��Ʈ�ѷ��� �Ѱܿ� ���� �̸��� �𵨸����� ����
		//			d.addAttribute("downloadfile", ���ϸ�);
		String fname = (String)model.get("downloadfile");
		//		2) ��ο� ���ϸ��� �����Ͽ� ���� ��ü ����
		File file = new File(upload+fname);
		System.out.println("# file viewer �� ���� �ٿ�ε� ���� ���� #");
		System.out.println("�������� : "+file.getPath());
		System.out.println("����ũ�� : "+file.length());
		
		// 2. response ��ü�� ���� ���� client�� �����ϱ�
		//		1) ���� �ٿ�ε带 ó���ϱ� ���� contentType ����
		response.setContentType("application/download; charset=UTF-8");
		//		2) ���� ũ��
		response.setContentLength((int)file.length()); // long -> int ����ȯ
		//		3) ���ϸ��� �ѱ��� ��� ���� ���� ����, +(���� encoding)�� " "�� ��ü
		fname = URLEncoder.encode(fname, "utf-8").replaceAll("\\+", " ");
		//		4) response�� header ������ ���ϸ� ���� �� encoding ������ binary�� ����
		// filename="���ϸ�"
		response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		// 3. File ��ü�� �о�� response�� OutputStream���� �����ϱ�
		FileInputStream fis = new FileInputStream(file); // ������ ������ stream���� �о�ͼ�
		OutputStream out = response.getOutputStream();   // ��Ʈ��ũ�� ���� �����ϵ��� response�� outputstream ��ü�� Ȱ��
		//		FileInputStream�� ���� ���� ��ü�� �о�� ���� OutputStream���� ����, ���������� ����
		FileCopyUtils.copy(fis, out);
		// 4. flush (�ڿ� ����)
		out.flush();
		
	}

}
