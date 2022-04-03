package mvc.vo;

public class DeptInfo {
	
	private String diId;
	private String diDept;
	private String diStatus;
	
	// 부서 인원 카운트 수
	private String count;
	
	public DeptInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDiId() {
		return diId;
	}
	public void setDiId(String diId) {
		this.diId = diId;
	}
	public String getDiDept() {
		return diDept;
	}
	public void setDiDept(String diDept) {
		this.diDept = diDept;
	}
	public String getDiStatus() {
		return diStatus;
	}
	public void setDiStatus(String diStatus) {
		this.diStatus = diStatus;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	
	
	
	

}
