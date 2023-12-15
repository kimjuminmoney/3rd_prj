package kr.co.daitdayoung.login.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FindPwVO {
	private String id, name,  type;
	private Date birth;

}
