package mvc.vo;

import java.util.Date;

public class TASK_CHECK {
	
	private String tcId;
	private String ptId;
	private String tcCheck;
	private String tcWriter;
	private Date tcRegdate;
	public TASK_CHECK() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTcId() {
		return tcId;
	}
	public void setTcId(String tcId) {
		this.tcId = tcId;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}
	public String getTcCheck() {
		return tcCheck;
	}
	public void setTcCheck(String tcCheck) {
		this.tcCheck = tcCheck;
	}
	public String getTcWriter() {
		return tcWriter;
	}
	public void setTcWriter(String tcWriter) {
		this.tcWriter = tcWriter;
	}
	public Date getTcRegdate() {
		return tcRegdate;
	}
	public void setTcRegdate(Date tcRegdate) {
		this.tcRegdate = tcRegdate;
	}
	
	
	
}
