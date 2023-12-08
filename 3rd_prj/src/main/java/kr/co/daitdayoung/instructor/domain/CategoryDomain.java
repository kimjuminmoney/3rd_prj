package kr.co.daitdayoung.instructor.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CategoryDomain {
	private String mcCode,mcName;
	private String scCode,scName;
}
