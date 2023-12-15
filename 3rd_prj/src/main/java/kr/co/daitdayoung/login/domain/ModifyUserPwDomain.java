package kr.co.daitdayoung.login.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class ModifyUserPwDomain {
	private String uiId;
	private Date birth;
}
