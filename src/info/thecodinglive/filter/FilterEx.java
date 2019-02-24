package info.thecodinglive.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter(urlPatterns = "*.jsp")
public class FilterEx implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		response.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("euc-kr");
		
		PrintWriter out = response.getWriter();
        System.out.println("필터적용 전");
        chain.doFilter(request, response);
        System.out.println("필터적용 후");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
