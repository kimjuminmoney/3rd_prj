package kr.co.daitdayoung.admin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class ManageUsersVO {

	private String uiName, uiId, adminId, insId, insName, insTel;
	private Date uiBirth, insBirth;
	
}
