package mvc.vo;

import java.sql.Date;

public class Notice {
	private int cnt;		// 전체 업무 건수
	private int pageSize;	// 한 페이지에 표시되는 업무 건수
	private int pageCount;	// 전체 페이지 수 = count / pageSize
	private int curPage;	// 현재 페이지 번호
	private int firstPage;	// 페이지 내 시작 번호
	private int lastPage;	// 페이지 내 마지막 번호
	
	private int blockSize;	// 한 번에 출력되는 페이지 블럭 수
	private int firstBlock;	// 페이지 블럭의 시작 번호
	private int lastBlock;	// 페이지 블럭의 끝 번호
	
	private String ntId;
	private String ntTitle;
	private String ntContent;
	private Date ntRegdate;
	private String ntWriter;
	private String ntType;
	
	
	
	
	
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
	public String getNtId() {
		return ntId;
	}
	public void setNtId(String ntId) {
		this.ntId = ntId;
	}
	public String getNtTitle() {
		return ntTitle;
	}
	public void setNtTitle(String ntTitle) {
		this.ntTitle = ntTitle;
	}
	public String getNtContent() {
		return ntContent;
	}
	public void setNtContent(String ntContent) {
		this.ntContent = ntContent;
	}
	public Date getNtRegdate() {
		return ntRegdate;
	}
	public void setNtRegdate(Date ntRegdate) {
		this.ntRegdate = ntRegdate;
	}
	public String getNtWriter() {
		return ntWriter;
	}
	public void setNtWriter(String ntWriter) {
		this.ntWriter = ntWriter;
	}
	public String getNtType() {
		return ntType;
	}
	public void setNtType(String ntType) {
		this.ntType = ntType;
	}
	
	
}
