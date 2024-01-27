package kr.co.daitdayoung.user.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

@Component
public class UserInterceptor implements HandlerInterceptor {

	/**
	 *	유저 ID세션 인터셉터
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uiId = (String) WebUtils.getSessionAttribute(request, "uiId");
		if (uiId == null) {
			response.sendRedirect(request.getContextPath() + "/login/login.do");
			return false;
		}//end if
		return true;
	}//preHandle
}//class
