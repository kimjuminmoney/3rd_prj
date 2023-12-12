package kr.co.daitdayoung.admin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ManageInqueryVO {
	private String inqAnswer, adminId, inqCode;
	private Date inqAnswerdate;
}
