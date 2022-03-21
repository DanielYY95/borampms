package mvc.vo;
// mvc.vo.DEPT_FILE 
import java.util.Date;

public class DEPT_FILE {

	private String dfId;
	private String dfFile;
	private Date dfRegdate;
	private String ddId;
	public DEPT_FILE() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DEPT_FILE(String dfFile) {
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
