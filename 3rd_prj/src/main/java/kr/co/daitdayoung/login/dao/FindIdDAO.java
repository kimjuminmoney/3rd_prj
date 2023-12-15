package kr.co.daitdayoung.login.dao;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.FindIdVO;
@Component
public class FindIdDAO {
	@Autowired
	private MyBatisHandler mbh;
	
	public FindIdDAO() {
		mbh= MyBatisHandler.getInstance();
	}
	public String selectUserId(FindIdVO fiVO) {
		mbh=mbh.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		String id=null;
		 id = ss.selectOne("kr.co.daitdayoung.login.userId", fiVO);
		mbh.closeHandler(ss);
		return id;
	}
	
	public String selectInsId(FindIdVO fiVO) {
		mbh=mbh.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		String id=null;
		id = ss.selectOne("kr.co.daitdayoung.login.insId", fiVO);
		mbh.closeHandler(ss);
		return id;
	}
				
	/*
	 * public static void main(String[] args) { Date date = new Date(); FindIdVO fVO
	 * = new FindIdVO(); fVO.setBirth(date); fVO.setName("홍홍홍");
	 * 
	 * 
	 * System.out.println(new FindIdDAO().selectUserId(fVO)); }
	 */

}
