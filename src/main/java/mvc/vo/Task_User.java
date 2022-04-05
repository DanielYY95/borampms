package mvc.vo;

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
	private String uiRank;
	private String uiDept;
	
	
	private int count;		// 전체 업무 건수
	private int pageSize;	// 한 페이지에 표시되는 업무 건수
	private int pageCount;	// 전체 페이지 수 = count / pageSize
	private int curPage;	// 현재 페이지 번호
	private int firstPage;	// 페이지 내 시작 번호
	private int lastPage;	// 페이지 내 마지막 번호
	
	private int blockSize;	// 한 번에 출력되는 페이지 블럭 수
	private int firstBlock;	// 페이지 블럭의 시작 번호
	private int lastBlock;	// 페이지 블럭의 끝 번호
	
	
	
	
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
	
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getFirstBlock() {
		return firstBlock;
	}

	public void setFirstBlock(int firstBlock) {
		this.firstBlock = firstBlock;
	}

	public int getLastBlock() {
		return lastBlock;
	}

	public void setLastBlock(int lastBlock) {
		this.lastBlock = lastBlock;
	}
	
}
