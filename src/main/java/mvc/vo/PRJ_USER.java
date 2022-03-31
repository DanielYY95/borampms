package mvc.vo;

public class PRJ_USER {
	
	private String piId;
	private String uiId;
	public PRJ_USER() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public PRJ_USER(String piId, String uiId) {
		super();
		this.piId = piId;
		this.uiId = uiId;
	}



	public String getPiId() {
		return piId;
	}
	public void setPiId(String piId) {
		this.piId = piId;
	}
	public String getUiId() {
		return uiId;
	}
	public void setUiId(String uiId) {
		this.uiId = uiId;
	}
	
	
	
	
	
}
