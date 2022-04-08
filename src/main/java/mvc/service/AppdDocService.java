package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.AppdDocDao;
import mvc.vo.APPD_DOC;
import mvc.vo.APPD_DOC_SCH;
import mvc.vo.USER_INFO;

// insert_DD
// insert_DF -> 첨부파일 정보 DB에 등록
@Service
public class AppdDocService {

	@Autowired
	private AppdDocDao dao;

	public List<APPD_DOC> getADList(APPD_DOC_SCH sch){
		sch.setCount(dao.totCnt(sch));
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		double totPage = sch.getCount()/(double)sch.getPageSize();
		totPage = Math.ceil(totPage);
		int totPageInt = (int)(totPage);
		sch.setPageCount(totPageInt);
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		sch.setFirstPage((sch.getCurPage()-1)*sch.getPageSize()+1);
		sch.setLastPage(sch.getCurPage()*sch.getPageSize());
		sch.setBlockSize(5);
		int curBlockGrp = (int)Math.ceil(sch.getCurPage() / (double)sch.getBlockSize());
		sch.setFirstBlock((curBlockGrp - 1)*sch.getBlockSize()+1);
		int lastBlockGrp = curBlockGrp*sch.getBlockSize();
		sch.setLastBlock((lastBlockGrp > sch.getPageCount()) ? sch.getPageCount() : lastBlockGrp);

		return dao.getADList(sch);
	}
	public List<USER_INFO> getDeptUserList(String usid){
		return dao.getDeptUserList(usid);
	}
	public void insertAD(APPD_DOC ins){
		dao.insertAD(ins);
	}
	public void updateAD(APPD_DOC ins){
		dao.updateAD(ins);
	}


}