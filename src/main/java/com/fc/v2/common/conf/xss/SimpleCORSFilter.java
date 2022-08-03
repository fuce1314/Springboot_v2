package com.fc.v2.common.conf.xss;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fc.v2.util.StringUtils;


public class SimpleCORSFilter implements Filter {
	/**
     * 排除链接
     */
    public List<String> excludes = new ArrayList<>();
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,FilterChain chain) throws IOException, ServletException {
		
       // 在这里，使用我们实现的XSS过滤器
		XssHttpServletRequestWrapper xssRequest  = new XssHttpServletRequestWrapper((HttpServletRequest) req);
		HttpServletResponse response = (HttpServletResponse) res;
		HttpServletRequest request = (HttpServletRequest) req;
		if (handleExcludeURL(request, response))
        {
            chain.doFilter(request, response);
            return;
        }
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods","POST, GET, PUT, OPTIONS, DELETE");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers","Origin, X-Requested-With, Content-Type, Accept, token");
		chain.doFilter(xssRequest, response);

	}

	public void init(FilterConfig filterConfig) {
		String tempExcludes = filterConfig.getInitParameter("exclusions");
        if (StringUtils.isNotEmpty(tempExcludes))
        {
            String[] url = tempExcludes.split(",");
            for (int i = 0; url != null && i < url.length; i++)
            {
                excludes.add(url[i]);
            }
        }
	}
	
	 private boolean handleExcludeURL(HttpServletRequest request, HttpServletResponse response)
	 {
	        String url = request.getServletPath();
	        String method = request.getMethod();
	        // GET DELETE 不过滤
	        if (method == null || method.matches("GET") || method.matches("DELETE"))
	        {
	            return true;
	        }
	        return StringUtils.matches(url, excludes);
	  }

	public void destroy() {
		
	}

}