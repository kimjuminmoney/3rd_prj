package kr.co.daitdayoung.admin.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DashboardDomain {
	String couName;
	int recJoin, coursesCnt, compCnt, totVis, visitors, registCnt;
	Date visitdate;
}
