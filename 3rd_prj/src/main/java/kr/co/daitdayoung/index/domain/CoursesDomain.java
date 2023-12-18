package kr.co.daitdayoung.index.domain;

import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesDomain {

		private int		couPeriod, hits;
		private Date	opendate;
		private String	couCode, insId, couName, content, bannerImg, sampleVideo,
						approveStatus, refuseReanson, scCode, mcCode, scName, mcName;
		
	}
