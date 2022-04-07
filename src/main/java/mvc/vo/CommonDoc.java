package mvc.vo;
import java.util.ArrayList;
// mvc.vo.CommonDoc 
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;
public class CommonDoc {
	private int cnt;
	private String cdId;
	private String cdTitle;
	private String cdWriter;
	private String cdDept;
	private String cdContent;
	private Date cdRegdate;
	private String diId;
	private String piId;
	private MultipartFile[] report;
	// 파일 정보 한번에 로딩
	private ArrayList<String> fnames;
	
	public CommonDoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public CommonDoc(String cdTitle, String cdWriter, String cdDept, String cdContent, String diId, String piId) {
		super();
		this.cdTitle = cdTitle;
		this.cdWriter = cdWriter;
		this.cdDept = cdDept;
		this.cdContent = cdContent;
		this.diId = diId;
		this.piId = piId;
	}
	


	public CommonDoc(String cdTitle, String cdContent) {
		super();
		this.cdTitle = cdTitle;
		this.cdContent = cdContent;
	}


	public String getCdId() {
		return cdId;
	}


	public void setCdId(String cdId) {
		this.cdId = cdId;
	}


	public String getCdTitle() {
		return cdTitle;
	}


	public void setCdTitle(String cdTitle) {
		this.cdTitle = cdTitle;
	}


	public String getCdWriter() {
		return cdWriter;
	}


	public void setCdWriter(String cdWriter) {
		this.cdWriter = cdWriter;
	}
	

	public String getCdDept() {
		return cdDept;
	}


	public void setCdDept(String cdDept) {
		this.cdDept = cdDept;
	}


	public String getCdContent() {
		return cdContent;
	}


	public void setCdContent(String cdContent) {
		this.cdContent = cdContent;
	}


	public Date getCdRegdate() {
		return cdRegdate;
	}


	public void setCdRegdate(Date cdRegdate) {
		this.cdRegdate = cdRegdate;
	}


	public String getDiId() {
		return diId;
	}


	public void setDiId(String diId) {
		this.diId = diId;
	}
	

	public String getPiId() {
		return piId;
	}


	public void setPiId(String piId) {
		this.piId = piId;
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


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	
	
}