package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.vo.LoginVO;

@Component
public class InquiryDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<InquiryDomain> selectInquiryList(LoginVO lVO) {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<InquiryDomain> iqList = ss.selectList("kr.co.daitdayoung.index.allInquiry", lVO);
		
		return iqList;
		
		
	} //selectInquiry
	
	
	public InquiryDomain selectInquiry(String inqCode) {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		InquiryDomain iqList = ss.selectOne("kr.co.daitdayoung.index.selectInquiry", inqCode);
		
		return iqList;
		
	} //searchInquiry
	
	public static void main (String[] agrs) {
		LoginVO lVO = new LoginVO("ui_test",null);
		List<InquiryDomain> list = new InquiryDAO().selectInquiryList(lVO);
		for(InquiryDomain id : list) {
			System.out.println(id);
		}
//		System.out.println(new InquiryDAO().selectInquiry("2"));
	} //main


} //class
