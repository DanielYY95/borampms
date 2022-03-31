package mvc.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class TASK_OUTPUT {

	private String toId;
	private String toFile;
	private String toWriter;
	private Date toRegdate;
	private String ptId;
	private MultipartFile[] toReport;
	
	
	public TASK_OUTPUT() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public TASK_OUTPUT(String toFile, String toWriter, String ptId) {
		super();
		this.toFile = toFile;
		this.toWriter = toWriter;
		this.ptId = ptId;
	}



	public String getToId() {
		return toId;
	}
	public void setToId(String toId) {
		this.toId = toId;
	}
	public String getToFile() {
		return toFile;
	}
	public void setToFile(String toFile) {
		this.toFile = toFile;
	}
	public String getToWriter() {
		return toWriter;
	}
	public void setToWriter(String toWriter) {
		this.toWriter = toWriter;
	}
	public Date getToRegdate() {
		return toRegdate;
	}
	public void setToRegdate(Date toRegdate) {
		this.toRegdate = toRegdate;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}
	public MultipartFile[] gettoReport() {
		return toReport;
	}
	public void settoReport(MultipartFile[] toReport) {
		this.toReport = toReport;
	}
	
	
	
}
