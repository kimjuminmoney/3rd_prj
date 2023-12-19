package kr.co.daitdayoung.index.domain;


import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class IndexDomain {
		private String	 mcCode, mcName, scName, bannerImg, couCode, couName, insName, scCode;
		private int hits;
		private List<IndexColDomain> list;
			
	}
