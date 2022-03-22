package mvc.vo;

public class KanbanVo {
	private String ptId;
	private String ptTitle;
	private String ptContent;
	private String ptStartdate;
	private String ptDuedate;
	private String ptType;
	private String ptStatus;
	private String uiId;
	private String piId;
	public KanbanVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KanbanVo(String ptId, String ptTitle, String ptContent, String ptStartdate, String ptDuedate, String ptType,
			String ptStatus, String uiId, String piId) {
		super();
		this.ptId = ptId;
		this.ptTitle = ptTitle;
		this.ptContent = ptContent;
		this.ptStartdate = ptStartdate;
		this.ptDuedate = ptDuedate;
		this.ptType = ptType;
		this.ptStatus = ptStatus;
		this.uiId = uiId;
		this.piId = piId;
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
