package kr.co.daitdayoung.login.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InsJoinVO {
	private String insId, insPw, insName, insIntrodce, insEmail, insTel, insProfile, type;
	private Date insJoinDate, insBirth;
	private char insQuit;

}
