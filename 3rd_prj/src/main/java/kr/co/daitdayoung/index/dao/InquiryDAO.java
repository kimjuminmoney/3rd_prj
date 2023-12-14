package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.vo.InquiryVO;
import kr.co.daitdayoung.index.vo.LoginVO;

@Component
public class InquiryDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<InquiryDomain> selectInquiryList(LoginVO lqVO) {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<InquiryDomain> iqList = ss.selectList("kr.co.daitdayoung.index.allInquiry", lqVO);
		
		mbh.closeHandler(ss);
		
		return iqList;
		
		
	} //selectInquiry
	
	
	public InquiryDomain selectInquiry(String inqCode) {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		InquiryDomain iqList = ss.selectOne("kr.co.daitdayoung.index.selectInquiry", inqCode);
		
		mbh.closeHandler(ss);
		
		return iqList;
		
		
	} //selectInquiry
	
	
	public List<InquiryDomain> searchInqCategory(String itName) {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<InquiryDomain> iqlist = ss.selectList("kr.co.daitdayoung.index.selectCategory" ,itName);
		
		mbh.closeHandler(ss);
		return iqlist;
		
		
	} //selectInquiry
	
	public List<InquiryDomain> searchInqWrite(InquiryVO inqVO) {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<InquiryDomain> iqList = ss.selectList("kr.co.daitdayoung.index.allInquiry", inqVO);
		
		mbh.closeHandler(ss);
		
		return iqList;
		
		
	} //selectInquiry
	
	
	
	
	public static void main (String[] agrs) {
		//List<InquiryDomain> list = new InquiryDAO().selectCategory();
		//System.out.println(new InquiryDAO().selectCategory());
	} //main





} //class
