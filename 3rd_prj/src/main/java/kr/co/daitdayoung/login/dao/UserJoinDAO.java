package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.UserJoinVO;

@Component
public class UserJoinDAO {
	private static String configPath="ke/co/daitdayoung/dao/mybatis-config.xml";
	
	public int insertUser(UserJoinVO ujVO)throws PersistenceException{
		int result = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		System.out.println(ujVO);
		
		result=ss.insert("kr.co.daitdayoung.login.userJoin", ujVO);
		if(result==1) {
			ss.commit();
		}else {
			ss.rollback();
		}
		mbh.closeHandler(ss);
		return result;
		
	}

}
