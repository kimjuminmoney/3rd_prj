package kr.co.daitdayoung.index.domain;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class IndexColDomain {
	private String	 mcCode, mcName, scName, bannerImg, couCode, couName, insName;
	private int hit;

}
