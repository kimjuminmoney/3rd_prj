package kr.co.daitdayoung.index.domain;


import java.util.List;

import kr.co.daitdayoung.index.controller.IndexColDomain;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class IndexDomain {
		private String	 mcCode, mcName, scName, bannerImg, couCode, couName, insName;
		private int hit;
		private List<IndexColDomain> list;
			
	}
