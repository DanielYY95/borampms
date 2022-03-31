package mvc.vo;
import java.util.ArrayList;
// mvc.vo.DeptDoc 
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class DeptDoc {

	private String ddId;
	private String ddTitle;
	private String ddWriter;
	private String ddDept;
	private String ddContent;
	private Date ddRegdate;
	private String diId;
	private MultipartFile[] report;
	// 파일 정보 한번에 로딩
	private ArrayList<String> fnames;
	public DeptDoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public DeptDoc(String ddTitle, String ddWriter, String ddDept, String ddContent, String diId) {
		super();
		this.ddTitle = ddTitle;
		this.ddWriter = ddWriter;
		this.ddDept = ddDept;
		this.ddContent = ddContent;
		this.diId = diId;
	}
	


	public DeptDoc(String ddTitle, String ddContent) {
		super();
		this.ddTitle = ddTitle;
		this.ddContent = ddContent;
	}


	public String getDdId() {
		return ddId;
	}


	public void setDdId(String ddId) {
		this.ddId = ddId;
	}


	public String getDdTitle() {
		return ddTitle;
	}


	public void setDdTitle(String ddTitle) {
		this.ddTitle = ddTitle;
	}


	public String getDdWriter() {
		return ddWriter;
	}


	public void setDdWriter(String ddWriter) {
		this.ddWriter = ddWriter;
	}


	public String getDdDept() {
		return ddDept;
	}


	public void setDdDept(String ddDept) {
		this.ddDept = ddDept;
	}


	public String getDdContent() {
		return ddContent;
	}


	public void setDdContent(String ddContent) {
		this.ddContent = ddContent;
	}


	public Date getDdRegdate() {
		return ddRegdate;
	}


	public void setDdRegdate(Date ddRegdate) {
		this.ddRegdate = ddRegdate;
	}


	public String getDiId() {
		return diId;
	}


	public void setDiId(String diId) {
		this.diId = diId;
	}


	public MultipartFile[] getReport() {
		return report;
	}


	public void setReport(MultipartFile[] report) {
		this.report = report;
	}


	public ArrayList<String> getFnames() {
		return fnames;
	}


	public void setFnames(ArrayList<String> fnames) {
		this.fnames = fnames;
	}
}