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
public class prjIssueSch {
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
	private String iContent;
	private String iCharge;
	private String iPriority;
	private String iDuedate;
	
	private String piId;
	
	public prjIssueSch() {
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