package mvc.vo;

import java.util.Date;

public class USER_INFOSch {
	
	private int count;		// 전체 업무 건수
	private int pageSize;	// 한 페이지에 표시되는 업무 건수
	private int pageCount;	// 전체 페이지 수 = count / pageSize
	private int curPage;	// 현재 페이지 번호
	private int firstPage;	// 페이지 내 시작 번호
	private int lastPage;	// 페이지 내 마지막 번호
	
	private int blockSize;	// 한 번에 출력되는 페이지 블럭 수
	private int firstBlock;	// 페이지 블럭의 시작 번호
	private int lastBlock;	// 페이지 블럭의 끝 번호
	
	
	private String uiId;
	private String uiPw;
	private String uiName;
	private String uiEmail;
	private String uiPhone;
	
	private String uiBirth;
	private Date uiRegDate;
	private String uiPic;
	private String uiIntro;
	private String uiRank;
	private String uiDept;
	private String uiStatus;
	
	public USER_INFOSch() {
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

	public String getUiId() {
		return uiId;
	}
	public void setUiId(String uiId) {
		this.uiId = uiId;
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
	public String getUiEmail() {
		return uiEmail;
	}
	public void setUiEmail(String uiEmail) {
		this.uiEmail = uiEmail;
	}
	
	
	public String getUiPhone() {
		return uiPhone;
	}
	public void setUiPhone(String uiPhone) {
		this.uiPhone = uiPhone;
	}
	public String getUiPic() {
		return uiPic;
	}
	public void setUiPic(String uiPic) {
		this.uiPic = uiPic;
	}
	public String getUiIntro() {
		return uiIntro;
	}
	public void setUiIntro(String uiIntro) {
		this.uiIntro = uiIntro;
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
	public String getUiStatus() {
		return uiStatus;
	}
	public void setUiStatus(String uiStatus) {
		this.uiStatus = uiStatus;
	}
	public Date getUiRegDate() {
		return uiRegDate;
	}
	public void setUiRegDate(Date uiRegDate) {
		this.uiRegDate = uiRegDate;
	}
	public String getUiBirth() {
		return uiBirth;
	}
	public void setUiBirth(String uiBirth) {
		this.uiBirth = uiBirth;
	}

	
	
	
}
