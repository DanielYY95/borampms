package mvc.vo;

import java.util.Date;

public class PRJ_INFO {

	private String piId;
	private String piWriter;
	private Date piRegdate;
	private Date piStartdate;
	private Date  piDuedate;
	private String piStatus;
	private String clId;
	
	
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
	public Date getPiStartdate() {
		return piStartdate;
	}
	public void setPiStartdate(Date piStartdate) {
		this.piStartdate = piStartdate;
	}
	public Date getPiDuedate() {
		return piDuedate;
	}
	public void setPiDuedate(Date piDuedate) {
		this.piDuedate = piDuedate;
	}
	public String getPiStatus() {
		return piStatus;
	}
	public void setPiStatus(String piStatus) {
		this.piStatus = piStatus;
	}
	public String getClId() {
		return clId;
	}
	public void setClId(String clId) {
		this.clId = clId;
	}
	
	
	
}
