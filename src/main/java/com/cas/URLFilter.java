package com.cas;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Configuration;

import com.cas.business.entity.UserDetails;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
public class URLFilter implements Filter {
	
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        log.info("########## Initiating Custom filter ##########");
    }

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();
		if(session == null) {
			req.logout();
		}
		else {
			UserDetails userDetails = (UserDetails) session.getAttribute("userDetails");
			if(userDetails ==null || (userDetails.getLoginId() == null && !req.getRequestURI().contains("login"))) {
				req.logout();
			}
		}

		log.info("Request URI is: " + req.getRequestURI());
		chain.doFilter(request, response);
		log.info("Response Status Code is: " + res.getStatus());
	}

}
