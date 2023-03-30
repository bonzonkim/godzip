package com.kh.app.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")  //어떤 url로 요청이 들어와도 다 받아서 처리한다
public class EncodingFilter implements Filter {

	//doFilter : 이 필터를 거칠 때 실행되는 메소드
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response); //필터를 통과시켜서 다음을 진행해준다
	}

}
