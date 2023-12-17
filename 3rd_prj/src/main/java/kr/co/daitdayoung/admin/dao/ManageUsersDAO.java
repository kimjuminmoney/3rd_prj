package kr.co.daitdayoung.admin.dao;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageUsersDomain;
import kr.co.daitdayoung.admin.vo.ManageUsersVO;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class ManageUsersDAO {

	public List<ManageUsersDomain> selectStudents() throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mu.selectStudents");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectStudents

	public List<ManageUsersDomain> selectInstructors() throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mu.selectInstructors");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectStudents
	
	public ManageUsersDomain selectDetailStu1(String uiId) throws PersistenceException{
		ManageUsersDomain detailStu = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailStu = ss.selectOne("kr.co.daitdayoung.admin.mu.selectDetailStu1",uiId);
		
		mbh.closeHandler(ss);
		
		return detailStu;
	}//selectDetailStu1
	
	public List<ManageUsersDomain> selectDetailStu2(String uiID) throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mu.selectDetailStu2",uiID);
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectDetailStu2

	public ManageUsersDomain selectDetailIns1(String insId) throws PersistenceException{
		ManageUsersDomain detailStu = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailStu = ss.selectOne("kr.co.daitdayoung.admin.mu.selectDetailIns1",insId);
		
		mbh.closeHandler(ss);
		
		return detailStu;
	}//selectDetailStu1
	
	public List<ManageUsersDomain> selectDetailIns2(String uiID) throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mu.selectDetailIns2",uiID);
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectDetailStu2
	
	public int updateStu(ManageUsersVO muVO) throws PersistenceException{
		
		int cnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt=ss.update("kr.co.daitdayoung.admin.mu.updateStu", muVO);
		
		if(cnt==1) {
			ss.commit();
		}//end if
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//updateStu
	
	public int updateIns(ManageUsersVO muVO) throws PersistenceException{
		
		int cnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		System.out.println("sdfsdfds");
		cnt=ss.update("kr.co.daitdayoung.admin.mu.updateIns", muVO);
		System.out.println("aaaaaaaaaaaaaaaaaaa");
		
		if(cnt==1) {
			ss.commit();
		}//end if
		System.out.println("1111 : "+cnt);
		mbh.closeHandler(ss);
		
		return cnt;
	}//updateStu
	
	public static void main(String[] args) {
		//System.out.println(new ManageUsersDAO().selectDetailIns2("ins1"));
		ManageUsersVO vo = new ManageUsersVO();
		vo.setAdminId("admin");
		vo.setInsId("ins5");
		vo.setInsName("바꿀이름");
		vo.setInsTel("010-5555-5555");
		 String dateString = "1995-10-30";

	        // 패턴을 지정하여 SimpleDateFormat 객체 생성
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

	        try {
	            // String을 Date로 파싱
	            java.util.Date utilDate = dateFormat.parse(dateString);

	            // java.sql.Date로 변환
	            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

	            vo.setInsBirth(sqlDate);
	            System.out.println(vo);
	            System.out.println(new ManageUsersDAO().updateIns(vo));
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
		
		
	}
	
}
