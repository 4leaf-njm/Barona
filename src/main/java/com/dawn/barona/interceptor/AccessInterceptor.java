package com.dawn.barona.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AccessInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('이미지변경 작업으로 인해 임시적으로 접근할 수 없습니다.\\n메인으로 이동합니다.');</script>");
		if(uri.contains("/m/")) 
			writer.println("<script>location.href='" + ctx + "/m/main.do';</script>");
		else
			writer.println("<script>location.href='" + ctx + "/main.do';</script>");
		writer.flush();
		writer.close();
		return false;
	}
}
