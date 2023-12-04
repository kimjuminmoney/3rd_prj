package kr.co.daitdayoung.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisHandler {
	private static MyBatisHandler mbH;
	private static SqlSessionFactory ssf; 
	
	private MyBatisHandler() {
		org.apache.ibatis.logging.LogFactory.useLog4J2Logging();
	}//MyBatisHandler
	
	public static MyBatisHandler getInstance() {
		if(mbH==null) {
			mbH=new MyBatisHandler();
		}//end if
		return mbH;
	}//getInstance
	
	private SqlSessionFactory myBatisBuilder(String configFile) {
		if(ssf == null) {
			try {
				Reader reader=Resources.getResourceAsReader(configFile);
				ssf=new SqlSessionFactoryBuilder().build(reader);
				if(reader != null) {reader.close();}//end if
			} catch (IOException e) {
				e.printStackTrace();
			}
		}//end if
		return ssf;
	}//myBatisBuilder
	
	public SqlSession getMyBatisHandler(boolean autoCommit) {
		SqlSession ss = null;
		ss=myBatisBuilder("kr/co/daitdayoung/dao/mybatis-config.xml").openSession(autoCommit);
		return ss;
	}//getMyBatisHandler
	
	public void closeHandler(SqlSession ss) {
		if(ss != null) {ss.close();}
	}//closeHandler
	
}//class
	





