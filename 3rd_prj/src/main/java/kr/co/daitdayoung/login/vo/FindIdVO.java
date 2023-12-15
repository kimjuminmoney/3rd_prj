package kr.co.daitdayoung.login.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FindIdVO {
	private String name, type;
	private Date birth;

}
