package mvc.vo;
import java.util.Date;
public class Sch_Gantt {
	private String sgId;
	private String sgType;
	private Date sgStaratdate;
	private String ptId;
	public Sch_Gantt() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sch_Gantt(String sgId, String sgType, Date sgStaratdate, String ptId) {
		super();
		this.sgId = sgId;
		this.sgType = sgType;
		this.sgStaratdate = sgStaratdate;
		this.ptId = ptId;
	}
	public String getSgId() {
		return sgId;
	}
	public void setSgId(String sgId) {
		this.sgId = sgId;
	}
	public String getSgType() {
		return sgType;
	}
	public void setSgType(String sgType) {
		this.sgType = sgType;
	}
	public Date getSgStaratdate() {
		return sgStaratdate;
	}
	public void setSgStaratdate(Date sgStaratdate) {
		this.sgStaratdate = sgStaratdate;
	}
	public String getPtId() {
		return ptId;
	}
	public void setPtId(String ptId) {
		this.ptId = ptId;
	}

}
