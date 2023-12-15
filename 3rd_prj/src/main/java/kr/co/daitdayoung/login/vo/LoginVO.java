package kr.co.daitdayoung.login.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class LoginVO {
	private String id, pw, type;
}
