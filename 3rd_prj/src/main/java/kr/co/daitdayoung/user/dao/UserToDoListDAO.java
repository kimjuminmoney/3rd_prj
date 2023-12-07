package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserToDoDomain;

@Component
public class UserToDoListDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<UserToDoDomain> selectCourseReristration(String userId){
		List<UserToDoDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.toDoList.toDOList", userId);

		mbh.closeHandler(ss);
		return list;
	}//selectCourseReristration
	

}//class
