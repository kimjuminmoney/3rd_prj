package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageUsersDomain {

	private String uiId, uiName, uiQuit, insId, insName, insTel, insQuit, couName, examStatus, completionStatus;
	private int couY, couN, couCnt, progressRate, lecCnt;
	private Date uiJoindate, uiBirth, insJoindate, registrationDate;
	
}
