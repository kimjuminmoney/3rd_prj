package kr.co.daitdayoung.user.domain;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserCoursesLectureDomain implements Serializable{
	
	private String lecCode, lecName, lecContent, videoName,courseStatus, couCode, insId, crgCode;
	
}
