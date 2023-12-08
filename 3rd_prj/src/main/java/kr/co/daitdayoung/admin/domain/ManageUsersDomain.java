package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageUsersDomain {

	private String uiId, uiName, uiQuit, insId, insName, insTel, insQuit;
	private int couY, couN, couCnt;
	private Date uiJoindate, insJoindate;
	
}
