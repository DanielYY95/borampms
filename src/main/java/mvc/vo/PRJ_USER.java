package mvc.vo;

public class PRJ_USER {
	
	private String uiName;
	private String uiDept;
	private String uiRank;
	private String piTitle;
	
	private String piId;
	private String uiId;
	private int puStatus;
	
	public PRJ_USER() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PRJ_USER(String piId, String uiId) {
		super();
		this.piId = piId;
		this.uiId = uiId;
	}

	public int getPuStatus() {
		return puStatus;
	}



	public void setPuStatus(int puStatus) {
		this.puStatus = puStatus;
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

	public String getUiRank() {
		return uiRank;
	}

	public void setUiRank(String uiRank) {
		this.uiRank = uiRank;
	}

	public String getPiTitle() {
		return piTitle;
	}

	public void setPiTitle(String piTitle) {
		this.piTitle = piTitle;
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
