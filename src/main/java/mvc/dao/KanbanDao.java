package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.KanbanVo;
import mvc.vo.PRJ_TASK;

@Repository
public interface KanbanDao {
	public List<KanbanVo> getKlist(String piId);
	public List<KanbanVo> getKlist2(String piId);
	public List<KanbanVo> getKlist3(String piId);
	public List<KanbanVo> getKlist4(String piId);
	public void insertKanban(PRJ_TASK ins);
	
	public void KBupdate(KanbanVo sch);
	
	
}