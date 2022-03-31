package mvc.vo;

public class Sch_Calendar {
	private int cd_id;
	private String cd_title;
	private String cd_start;
	private	String cd_end;
	private String cd_content;
	private String cd_borderColor;
	private String cd_backgrColor;
	private String cd_textColor;
	private boolean cd_allDay;
	public Sch_Calendar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sch_Calendar(int cd_id, String cd_title, String cd_start, String cd_end, String cd_content,
			String cd_borderColor, String cd_backgrColor, String cd_textColor, boolean cd_allDay) {
		super();
		this.cd_id = cd_id;
		this.cd_title = cd_title;
		this.cd_start = cd_start;
		this.cd_end = cd_end;
		this.cd_content = cd_content;
		this.cd_borderColor = cd_borderColor;
		this.cd_backgrColor = cd_backgrColor;
		this.cd_textColor = cd_textColor;
		this.cd_allDay = cd_allDay;
	}
	public int getCd_id() {
		return cd_id;
	}
	public void setCd_id(int cd_id) {
		this.cd_id = cd_id;
	}
	public String getCd_title() {
		return cd_title;
	}
	public void setCd_title(String cd_title) {
		this.cd_title = cd_title;
	}
	public String getCd_start() {
		return cd_start;
	}
	public void setCd_start(String cd_start) {
		this.cd_start = cd_start;
	}
	public String getCd_end() {
		return cd_end;
	}
	public void setCd_end(String cd_end) {
		this.cd_end = cd_end;
	}
	public String getCd_content() {
		return cd_content;
	}
	public void setCd_content(String cd_content) {
		this.cd_content = cd_content;
	}
	public String getCd_borderColor() {
		return cd_borderColor;
	}
	public void setCd_borderColor(String cd_borderColor) {
		this.cd_borderColor = cd_borderColor;
	}
	public String getCd_backgrColor() {
		return cd_backgrColor;
	}
	public void setCd_backgrColor(String cd_backgrColor) {
		this.cd_backgrColor = cd_backgrColor;
	}
	public String getCd_textColor() {
		return cd_textColor;
	}
	public void setCd_textColor(String cd_textColor) {
		this.cd_textColor = cd_textColor;
	}
	public boolean isCd_allDay() {
		return cd_allDay;
	}
	public void setCd_allDay(boolean cd_allDay) {
		this.cd_allDay = cd_allDay;
	}
	
}