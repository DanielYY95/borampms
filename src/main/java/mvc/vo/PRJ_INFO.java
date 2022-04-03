package mvc.vo;

public class PRJ_INFO {

	private String piId;
	private String piWriter;
	private String piTitle;
	private String piRegdate;
	private String piStartdate;
	private String piDuedate;
	private String piStatus;
	
	// DB에 없으나 작성자명을 나타내기위함
	private String uiName;
	private String puStatus;
	

	
	public String getPuStatus() {
		return puStatus;
	}
	public void setPuStatus(String puStatus) {
		this.puStatus = puStatus;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public PRJ_INFO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPiId() {
		return piId;
	}
	public void setPiId(String piId) {
		this.piId = piId;
	}
	
	
	public String getPiTitle() {
		return piTitle;
	}
	public void setPiTitle(String piTitle) {
		this.piTitle = piTitle;
	}
	public String getPiWriter() {
		return piWriter;
	}
	public void setPiWriter(String piWriter) {
		this.piWriter = piWriter;
	}
	
	
	
	
	public String getPiRegdate() {
		return piRegdate;
	}
	public void setPiRegdate(String piRegdate) {
		this.piRegdate = piRegdate;
	}
	public String getPiStartdate() {
		return piStartdate;
	}
	public void setPiStartdate(String piStartdate) {
		this.piStartdate = piStartdate;
	}
	public String getPiDuedate() {
		return piDuedate;
	}
	public void setPiDuedate(String piDuedate) {
		this.piDuedate = piDuedate;
	}
	public String getPiStatus() {
		return piStatus;
	}
	public void setPiStatus(String piStatus) {
		this.piStatus = piStatus;
	}

	
}
