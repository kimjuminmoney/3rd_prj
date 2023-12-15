package kr.co.daitdayoung.index.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class IndexColDomain {
	private String couCode, couName, bannerImg, insName, insId, mcCode, completionStatus;
	private int hits, completionCnt;
}
