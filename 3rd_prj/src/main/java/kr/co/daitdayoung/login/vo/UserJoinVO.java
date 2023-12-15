package kr.co.daitdayoung.login.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserJoinVO {
	private String uiId, uiPw, uiName,type;
	private Date uiJoinDate,  uiBirth;
	private char uiQuit;
}
