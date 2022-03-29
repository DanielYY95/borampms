package mvc.vo;

import java.util.Date;

public class TASK_GUIDE {

	private String tgId;
	private String ptId;
	private String tgFile;
	private String tgWriter;
	private Date tgRegdate;
	public TASK_GUIDE() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTgId() {
		return tgId;
	}
	public void setTgId(String tgId) {
		this.tgId = tgId;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}
	public String getTgFile() {
		return tgFile;
	}
	public void setTgFile(String tgFile) {
		this.tgFile = tgFile;
	}
	public String getTgWriter() {
		return tgWriter;
	}
	public void setTgWriter(String tgWriter) {
		this.tgWriter = tgWriter;
	}
	public Date getTgRegdate() {
		return tgRegdate;
	}
	public void setTgRegdate(Date tgRegdate) {
		this.tgRegdate = tgRegdate;
	}
	
	
}
