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
public class TASK_ISSUE {
	private int cnt;	// 페이징 처리용
	
	private String tiId;
	private String tiWriter;
	private String tiContent;
	private String tiCharge;
	private String tiPriority;
	private String tiDuedate;
	private String ptId;
	public TASK_ISSUE() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getTiId() {
		return tiId;
	}
	public void setTiId(String tiId) {
		this.tiId = tiId;
	}
	public String getTiWriter() {
		return tiWriter;
	}
	public void setTiWriter(String tiWriter) {
		this.tiWriter = tiWriter;
	}
	public String getTiContent() {
		return tiContent;
	}
	public void setTiContent(String tiContent) {
		this.tiContent = tiContent;
	}
	public String getTiCharge() {
		return tiCharge;
	}
	public void setTiCharge(String tiCharge) {
		this.tiCharge = tiCharge;
	}
	public String getTiPriority() {
		return tiPriority;
	}
	public void setTiPriority(String tiPriority) {
		this.tiPriority = tiPriority;
	}
	public String getTiDuedate() {
		return tiDuedate;
	}
	public void setTiDuedate(String tiDuedate) {
		this.tiDuedate = tiDuedate;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}
	
	
}