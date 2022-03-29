package mvc.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import mvc.vo.KanbanVo;

@Repository
public interface KanbanDao {
	public List<KanbanVo> getKlist();
}
