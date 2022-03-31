package mvc.vo;

import java.util.Date;

public class Task_User {
	
	private int cnt;
	private String ptId;
	private String ptTitle;
	private String ptContent;
	private String ptStartdate;
	private String ptDuedate;
	private String ptCharge;
	private String ptType;
	private String ptStatus;
	private String ptGuidecontent;
	private String uiId;
	private String piId;
	
	// user_info에서 아이디 생성일은 필요없을 듯 해서...
	
	private String uiPw;
	private String uiName;
	private String uiEmail;
	private String uiPhone;
	private String uiBirth;
	private Date uiRegDate;
	private String uiPic;
	private String uiIntro;
	private String uiRank;
	private String uiDept;
	private String uiStatus;
	public Task_User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Task_User(String piId, String uiDept,  String uiName) {
		super();
		this.piId = piId;
		this.uiDept = uiDept;
		this.uiName = uiName;
		
	}



	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
	public String getPtContent() {
		return ptContent;
	}
	public void setPtContent(String ptContent) {
		this.ptContent = ptContent;
	}
	public String getPtStartdate() {
		return ptStartdate;
	}
	public void setPtStartdate(String ptStartdate) {
		this.ptStartdate = ptStartdate;
	}
	public String getPtDuedate() {
		return ptDuedate;
	}
	public void setPtDuedate(String ptDuedate) {
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
	public String getUiPw() {
		return uiPw;
	}
	public void setUiPw(String uiPw) {
		this.uiPw = uiPw;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public String getUiEmail() {
		return uiEmail;
	}
	public void setUiEmail(String uiEmail) {
		this.uiEmail = uiEmail;
	}
	public String getUiPhone() {
		return uiPhone;
	}
	public void setUiPhone(String uiPhone) {
		this.uiPhone = uiPhone;
	}
	public String getUiBirth() {
		return uiBirth;
	}
	public void setUiBirth(String uiBirth) {
		this.uiBirth = uiBirth;
	}
	public Date getUiRegDate() {
		return uiRegDate;
	}
	public void setUiRegDate(Date uiRegDate) {
		this.uiRegDate = uiRegDate;
	}
	public String getUiPic() {
		return uiPic;
	}
	public void setUiPic(String uiPic) {
		this.uiPic = uiPic;
	}
	public String getUiIntro() {
		return uiIntro;
	}
	public void setUiIntro(String uiIntro) {
		this.uiIntro = uiIntro;
	}
	public String getUiRank() {
		return uiRank;
	}
	public void setUiRank(String uiRank) {
		this.uiRank = uiRank;
	}
	public String getUiDept() {
		return uiDept;
	}
	public void setUiDept(String uiDept) {
		this.uiDept = uiDept;
	}
	public String getUiStatus() {
		return uiStatus;
	}
	public void setUiStatus(String uiStatus) {
		this.uiStatus = uiStatus;
	}
	
	
	
}
