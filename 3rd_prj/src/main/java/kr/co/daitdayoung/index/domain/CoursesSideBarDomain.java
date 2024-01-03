package kr.co.daitdayoung.index.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CoursesSideBarDomain {
	
	private String mcCode, mcName;
	private List<SubCategoryDomain> subCategory;
	
}
