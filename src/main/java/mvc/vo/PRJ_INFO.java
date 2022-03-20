package mvc.vo;

import java.util.Date;

public class PRJ_INFO {

	private String piId;
	private String piWriter;
	private Date piRegdate;
	private String piStartdate;
	private String piDuedate;
	private String piStatus;
	
	public PRJ_INFO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPiId() {
		return piId;
	}
	public void setPiId(String piId) {
		this.piId = piId;
	}
	public String getPiWriter() {
		return piWriter;
	}
	public void setPiWriter(String piWriter) {
		this.piWriter = piWriter;
	}
	public Date getPiRegdate() {
		return piRegdate;
	}
	public void setPiRegdate(Date piRegdate) {
		this.piRegdate = piRegdate;
	}
	
	
	
	public String getPiStartdate() {
		return piStartdate;
	}
	public void setPiStartdate(String piStartdate) {
		this.piStartdate = piStartdate;
	}
	public String getPiDuedate() {
		return piDuedate;
	}
	public void setPiDuedate(String piDuedate) {
		this.piDuedate = piDuedate;
	}
	public String getPiStatus() {
		return piStatus;
	}
	public void setPiStatus(String piStatus) {
		this.piStatus = piStatus;
	}

	
}
