package mvc.vo;

import java.util.Date;

public class TASK_HISTORY {

	private String thId;
	private String thWriter;
	private String thContent;
	private Date thRegdate;
	private String ptId;
	public TASK_HISTORY() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getThId() {
		return thId;
	}
	public void setThId(String thId) {
		this.thId = thId;
	}
	public String getThWriter() {
		return thWriter;
	}
	public void setThWriter(String thWriter) {
		this.thWriter = thWriter;
	}
	public String getThContent() {
		return thContent;
	}
	public void setThContent(String thContent) {
		this.thContent = thContent;
	}
	public Date getThRegdate() {
		return thRegdate;
	}
	public void setThRegdate(Date thRegdate) {
		this.thRegdate = thRegdate;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}

	
}
