package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.KanbanDao;
import mvc.vo.KanbanVo;

@Service
public class KanbanService {
	@Autowired
	private KanbanDao dao;
	
	public List<KanbanVo> getKlist() {
		return dao.getKlist();
	}

	public List<KanbanVo> getKlist2() {
		return dao.getKlist2();
	}
	public List<KanbanVo> getKlist3() {
		return dao.getKlist3();
	}
	public List<KanbanVo> getKlist4() {
		return dao.getKlist4();
	}
}
