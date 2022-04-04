package mvc.vo;
// mvc.vo.CommonFile 
import java.util.Date;

public class CommonFile {

	private String cfId;
	private String cfFile;
	private Date cfRegdate;
	private String cdId;
	public CommonFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommonFile(String cfFile) {
		super();
		this.cfFile = cfFile;
	}
	public String getCfId() {
		return cfId;
	}
	public void setCfId(String cfId) {
		this.cfId = cfId;
	}
	public String getCfFile() {
		return cfFile;
	}
	public void setCfFile(String cfFile) {
		this.cfFile = cfFile;
	}
	public Date getCfRegdate() {
		return cfRegdate;
	}
	public void setCfRegdate(Date cfRegdate) {
		this.cfRegdate = cfRegdate;
	}
	public String getCdId() {
		return cdId;
	}
	public void setCdId(String cdId) {
		this.cdId = cdId;
	}
	
	
	
}
