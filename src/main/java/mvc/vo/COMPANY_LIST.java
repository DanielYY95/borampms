package mvc.vo;

import java.util.Date;

public class COMPANY_LIST {

	private String clId; 
	private String clName; 
	private Date clRegdate; 
	private int clStatus;
	public COMPANY_LIST() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getClId() {
		return clId;
	}
	public void setClId(String clId) {
		this.clId = clId;
	}
	public String getClName() {
		return clName;
	}
	public void setClName(String clName) {
		this.clName = clName;
	}
	public Date getClRegdate() {
		return clRegdate;
	}
	public void setClRegdate(Date clRegdate) {
		this.clRegdate = clRegdate;
	}
	public int getClStatus() {
		return clStatus;
	}
	public void setClStatus(int clStatus) {
		this.clStatus = clStatus;
	}
	
	
	
	
}
