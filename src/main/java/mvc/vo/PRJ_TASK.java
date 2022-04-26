package mvc.vo;

public class PRJ_TASK {
	private int cnt;
	private String ptId;
	private String ptTitle;
	private String ptContent;
	private String ptStartdate;
	private String ptDuedate;
	private String ptCharge;
	private String ptType;
	private String ptStatus;
	private String ptPriority;

	private String uiId;
	private String piId;
	private String duration;
	
	private String uiName;
	private String uiDept;
	
	
	
	public PRJ_TASK(String ptId, String uiDept, String uiName) {
		super();
		this.ptId = ptId;
		this.uiName = uiName;
		this.uiDept = uiDept;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public String getUiDept() {
		return uiDept;
	}
	public void setUiDept(String uiDept) {
		this.uiDept = uiDept;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public PRJ_TASK() {
		super();
		// TODO Auto-generated constructor stub
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
	
	
	public String getPtPriority() {
		return ptPriority;
	}
	public void setPtPriority(String ptPriority) {
		this.ptPriority = ptPriority;
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