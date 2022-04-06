package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.KanbanDao;
import mvc.vo.KanbanVo;
import mvc.vo.PRJ_TASK;

@Service
public class KanbanService {
	@Autowired
	private KanbanDao dao;
	
	public List<KanbanVo> getKlist(String piId) {
		return dao.getKlist(piId);
	}

	public List<KanbanVo> getKlist2(String piId) {
		return dao.getKlist2(piId);
	}
	public List<KanbanVo> getKlist3(String piId) {
		return dao.getKlist3(piId);
	}
	public List<KanbanVo> getKlist4(String piId) {
		return dao.getKlist4(piId);
	}
	
	public String insertKanban(PRJ_TASK ins) {
		dao.insertKanban(ins);
		String msg = "업무 등록 성공";
		
		return msg;
	}
	
	public void KBupdate(KanbanVo sch) {
		
		dao.KBupdate(sch);
		
	};
	
	
}