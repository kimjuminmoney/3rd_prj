package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.NoticeDAO;
import kr.co.daitdayoung.index.domain.NoticeDomain;

@Component
public class NoticeService {
	
	@Autowired
	private NoticeDAO nDAO;
	
	public List<NoticeDomain> searchNotice() {//전체
		
		 List<NoticeDomain> list = nDAO.selectNoticeList();
		 return list;
	}

	public NoticeDomain searchNoticeDetail(String notCode) { //상세로 하나
		
		return nDAO.searchNotice(notCode);
	} //searchNoticeDetail
	
}
