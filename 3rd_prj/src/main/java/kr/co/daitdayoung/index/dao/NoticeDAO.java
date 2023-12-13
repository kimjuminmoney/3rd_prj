package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.NoticeDomain;



@Component
public class NoticeDAO {
	
	@Autowired
	private MyBatisHandler mbh;

	public List<NoticeDomain> selectNoticeList () { //DAO에서 가져오기 때문에 select (Service는 search)
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<NoticeDomain> ndList = ss.selectList("kr.co.daitdayoung.index.allNotice");
		
		mbh.closeHandler(ss);
		
		return ndList;
		
	} //searchNotice
	
	
	public NoticeDomain searchNotice (String notCode) {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		NoticeDomain ndList = ss.selectOne("kr.co.daitdayoung.index.selectNotice", notCode);
		
		mbh.closeHandler(ss);
		
		System.out.println(ndList);
		
		return ndList;
		
	} //searchNotice
	
	
	public static void main (String[] agrs) {
		System.out.println(new NoticeDAO().selectNoticeList());
	} //main
	
} //class
