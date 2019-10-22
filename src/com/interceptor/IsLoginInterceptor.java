package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class IsLoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		String user=(String) arg0.getSession().getAttribute("user");
		
		if(user!=null){
			return true;
		}else{
			//arg0.setAttribute("msg", "请先登录！！");
			//arg1.sendRedirect(arg0.getContextPath()+"/msg.action");
			arg1.sendRedirect(arg0.getContextPath()+"/index.jsp");
			//arg0.getRequestDispatcher("/index.jsp").forward(arg0, arg1);
			return true;
		}
		
	}

}