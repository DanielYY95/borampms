package mvc.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import mvc.vo.KanbanVo;

@Repository
public interface KanbanDao {
	public List<KanbanVo> getKlist();
	public List<KanbanVo> getKlist2();
	public List<KanbanVo> getKlist3();
	public List<KanbanVo> getKlist4();
}
