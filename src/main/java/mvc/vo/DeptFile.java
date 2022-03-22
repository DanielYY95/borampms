package mvc.vo;
// mvc.vo.DeptFile 
import java.util.Date;

public class DeptFile {

	private String dfId;
	private String dfFile;
	private Date dfRegdate;
	private String ddId;
	public DeptFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DeptFile(String dfFile) {
		super();
		this.dfFile = dfFile;
	}
	public String getDfId() {
		return dfId;
	}
	public void setDfId(String dfId) {
		this.dfId = dfId;
	}
	public String getDfFile() {
		return dfFile;
	}
	public void setDfFile(String dfFile) {
		this.dfFile = dfFile;
	}
	public Date getDfRegdate() {
		return dfRegdate;
	}
	public void setDfRegdate(Date dfRegdate) {
		this.dfRegdate = dfRegdate;
	}
	public String getDdId() {
		return ddId;
	}
	public void setDdId(String ddId) {
		this.ddId = ddId;
	}
	
	
}
