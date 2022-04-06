package mvc.vo;

public class TaskSch {
	private int count;		// 전체 업무 건수
	private int pageSize;	// 한 페이지에 표시되는 업무 건수
	private int pageCount;	// 전체 페이지 수 = count / pageSize
	private int curPage;	// 현재 페이지 번호
	private int firstPage;	// 페이지 내 시작 번호
	private int lastPage;	// 페이지 내 마지막 번호
	
	private int blockSize;	// 한 번에 출력되는 페이지 블럭 수
	private int firstBlock;	// 페이지 블럭의 시작 번호
	private int lastBlock;	// 페이지 블럭의 끝 번호
	
	
	// 이하 검색 키워드
	private String ptTitle;
	private String ptStartdate;
	private String ptDuedate;
	private String ptCharge;
	
	private String piId;
	private String uiId;
	
	
	public TaskSch() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getPtTitle() {
		return ptTitle;
	}

	public void setPtTitle(String ptTitle) {
		this.ptTitle = ptTitle;
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
