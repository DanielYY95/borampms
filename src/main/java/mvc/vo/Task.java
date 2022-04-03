package mvc.vo;

import java.sql.Date;

/*
 * test_task -
 * pt_id
 * pt_title
 * pt_startdate
 * pt_duedate
 * pt_charge
 * pt_type
 * pt_status
 * pt_guidecontent
 * ui_id
 * pi_id
 * 
*/
public class Task {
	private int count;
	
	private String ptId;
	private String ptTitle;
	private Date ptStartdate;
	private Date ptDuedate;
	private String ptCharge;
	private String ptType;
	private String ptStatus;
	private String ptGuidecontent;
	private String uiId;
	private String piId;
	
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public int getCount() {
		return count;
	}



	public void setCount(int count) {
		this.count = count;
	}



	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}
	public String getPtTitle() {
		return ptTitle;
	}
	public void setPtTitle(String ptTitle) {
		this.ptTitle = ptTitle;
	}
	public Date getPtStartdate() {
		return ptStartdate;
	}
	public void setPtStartdate(Date ptStartdate) {
		this.ptStartdate = ptStartdate;
	}
	public Date getPtDuedate() {
		return ptDuedate;
	}
	public void setPtDuedate(Date ptDuedate) {
		this.ptDuedate = ptDuedate;
	}
	public String getPtCharge() {
		return ptCharge;
	}
	public void setPtCharge(String ptCharge) {
		this.ptCharge = ptCharge;
	}
	public String getPtType() {
		return ptType;
	}
	public void setPtType(String ptType) {
		this.ptType = ptType;
	}
	public String getPtStatus() {
		return ptStatus;
	}
	public void setPtStatus(String ptStatus) {
		this.ptStatus = ptStatus;
	}
	public String getPtGuidecontent() {
		return ptGuidecontent;
	}
	public void setPtGuidecontent(String ptGuidecontent) {
		this.ptGuidecontent = ptGuidecontent;
	}
	public String getUiId() {
		return uiId;
	}
	public void setUiId(String uiId) {
		this.uiId = uiId;
	}
	public String getPiId() {
		return piId;
	}
	public void setPiId(String piId) {
		this.piId = piId;
	}
	
	
}
