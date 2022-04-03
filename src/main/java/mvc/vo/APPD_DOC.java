package mvc.vo;

import java.util.Date;

public class APPD_DOC {
	private String adId;
	private String adDept;
	private String adTitle;
	private String adWriter;
	private String adContent;
	private Date adRegdate;
	private String adAppd;
	private String adProcess;
	private String adUiId;
	private String uiName;
	private int adAppdSign;

	public APPD_DOC() {
		super();
		// TODO Auto-generated constructor stub
	}
	public APPD_DOC(String adId, String adDept, String adTitle, String adWriter, String adContent, Date adRegdate,
			String adAppd, String adProcess, String adUiId) {
		super();
		this.adId = adId;
		this.adDept = adDept;
		this.adTitle = adTitle;
		this.adWriter = adWriter;
		this.adContent = adContent;
		this.adRegdate = adRegdate;
		this.adAppd = adAppd;
		this.adProcess = adProcess;
		this.adUiId = adUiId;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getAdDept() {
		return adDept;
	}
	public void setAdDept(String adDept) {
		this.adDept = adDept;
	}
	public String getAdTitle() {
		return adTitle;
	}
	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}
	public String getAdWriter() {
		return adWriter;
	}
	public void setAdWriter(String adWriter) {
		this.adWriter = adWriter;
	}
	public String getAdContent() {
		return adContent;
	}
	public void setAdContent(String adContent) {
		this.adContent = adContent;
	}
	public Date getAdRegdate() {
		return adRegdate;
	}
	public void setAdRegdate(Date adRegdate) {
		this.adRegdate = adRegdate;
	}
	public String getAdAppd() {
		return adAppd;
	}
	public void setAdAppd(String adAppd) {
		this.adAppd = adAppd;
	}
	public String getAdProcess() {
		return adProcess;
	}
	public void setAdProcess(String adProcess) {
		this.adProcess = adProcess;
	}
	public String getAdUiId() {
		return adUiId;
	}
	public void setAdUiId(String adUiId) {
		this.adUiId = adUiId;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public int getAdAppdSign() {
		return adAppdSign;
	}
	public void setAdAppdSign(int adAppdSign) {
		this.adAppdSign = adAppdSign;
	}


}
