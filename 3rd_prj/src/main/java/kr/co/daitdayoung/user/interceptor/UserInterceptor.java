package kr.co.daitdayoung.user.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

public class UserInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uiId = (String) WebUtils.getSessionAttribute(request, "uiId");

		if (uiId == null) {
			// Redirect to the login page
			response.sendRedirect(request.getContextPath() + "/login/login.do");
			return false; // Interrupt the request processing
		}

		return true; // Continue with the request processing
	}

}
