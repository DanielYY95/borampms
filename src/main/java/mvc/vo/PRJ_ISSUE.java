package mvc.vo;

/*
 *  ti_id varchar2(20) PRIMARY KEY,
	ti_writer varchar2(100),
	ti_content varchar2(4000),
	ti_charge varchar2(100),
	ti_priority varchar2(30),
	ti_duedate varchar2(20),
	pt_id REFERENCES prj_task(pt_id)
 */
public class PRJ_ISSUE {
	private int cnt;	// 페이징 처리용
	private String uiName;
	
	private String iId;
	private String iWriter;
	private String iContent;
	private String iCharge;
	private String iPriority;
	private String iDuedate;
	private String piId;
	public PRJ_ISSUE() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public String getiId() {
		return iId;
	}
	public void setiId(String iId) {
		this.iId = iId;
	}
	public String getiWriter() {
		return iWriter;
	}
	public void setiWriter(String iWriter) {
		this.iWriter = iWriter;
	}
	public String getiContent() {
		return iContent;
	}
	public void setiContent(String iContent) {
		this.iContent = iContent;
	}
	public String getiCharge() {
		return iCharge;
	}
	public void setiCharge(String iCharge) {
		this.iCharge = iCharge;
	}
	public String getiPriority() {
		return iPriority;
	}
	public void setiPriority(String iPriority) {
		this.iPriority = iPriority;
	}
	public String getiDuedate() {
		return iDuedate;
	}
	public void setiDuedate(String iDuedate) {
		this.iDuedate = iDuedate;
	}
	public String getPiId() {
		return piId;
	}
	public void setPiId(String piId) {
		this.piId = piId;
	}
	
	
	
	
}