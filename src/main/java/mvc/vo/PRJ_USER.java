package mvc.vo;

public class PRJ_USER {
	
	private String uiName;
	private String uiDept;
	private String uiRank;
	private String piTitle;
	private String puId;
	
	private String piId;
	private String uiId;
	private String puStatus; // 넘버 타입이긴 하나 전체로 검색을 할 때는 이게 용이
	
	public PRJ_USER() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PRJ_USER(String piId, String uiId) {
		super();
		this.piId = piId;
		this.uiId = uiId;
	}

	
	
	public String getPuId() {
		return puId;
	}

	public void setPuId(String puId) {
		this.puId = puId;
	}

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
