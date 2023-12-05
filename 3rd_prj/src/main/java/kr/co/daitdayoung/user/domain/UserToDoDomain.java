package kr.co.daitdayoung.user.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserToDoDomain {
	private String couName, crCode;
	private int examPeriod;
	private Date completiondate;

}
