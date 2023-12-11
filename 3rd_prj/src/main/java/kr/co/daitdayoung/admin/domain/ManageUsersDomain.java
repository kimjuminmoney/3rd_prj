package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageUsersDomain {
	
	private String uiId, uiName, uiQuit, insId, insName, insTel, insQuit, insEmail, couName,
				insInstrodce, insProfile, inscouName, examStatus, completionStatus, approve, refuseReanson;
	
	private int couY, couN, couCnt, progressRate, lecCnt, regCnt, comCnt;
	
	private Date uiJoindate, uiBirth, insBirth, insJoindate, registrationDate, opendate;
	
}
