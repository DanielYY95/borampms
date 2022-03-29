package mvc.vo;

import java.util.Date;

public class Alarm {
	
	private String aId;
	private String aFrom;
	private String aTo;
	private String aContent;
	private int aChecked;
	private Date aRegdate;
	private String piId;
	
	public Alarm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Alarm(String aFrom, String aTo, String aContent, String piId) {
		super();
		this.aFrom = aFrom;
		this.aTo = aTo;
		this.aContent = aContent;
		this.piId = piId;
	}



	public String getPiId() {
		return piId;
	}



	public void setPiId(String piId) {
		this.piId = piId;
	}



	public String getaId() {
		return aId;
	}
	public void setaId(String aId) {
		this.aId = aId;
	}
	public String getaFrom() {
		return aFrom;
	}
	public void setaFrom(String aFrom) {
		this.aFrom = aFrom;
	}
	public String getaTo() {
		return aTo;
	}
	public void setaTo(String aTo) {
		this.aTo = aTo;
	}
	public String getaContent() {
		return aContent;
	}
	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	public int getaChecked() {
		return aChecked;
	}
	public void setaChecked(int aChecked) {
		this.aChecked = aChecked;
	}
	public Date getaRegdate() {
		return aRegdate;
	}
	public void setaRegdate(Date aRegdate) {
		this.aRegdate = aRegdate;
	}

	
	
	
	
}
