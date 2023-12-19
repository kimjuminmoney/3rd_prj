package kr.co.daitdayoung.index.domain;




import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesDomain {

		private int		couPeriod, hits;
		private String	couCode, insId, couName, bannerImg, 
						scCode, mcCode, scName, mcName, insName;
		
	}
