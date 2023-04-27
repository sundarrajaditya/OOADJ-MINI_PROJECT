package com.shareapp.spring.service;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Configuration
@Order(Ordered.HIGHEST_PRECEDENCE)
public class SessionFilter implements Filter {

    protected static final List<String> ALLOWED_URL_LIST = Arrays.asList("/login", "/register","/favicon.ico","/");
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession(false);
        String url = (request.getRequestURI());
        System.out.println(url);

        if(ALLOWED_URL_LIST.contains(url) || url.endsWith(".css") || url.endsWith(".js") || url.endsWith(".png")
                || url.endsWith(".jpg") || url.endsWith(".jpeg") || url.endsWith(".ttf") || url.endsWith(".woff")
                || url.endsWith(".csv") || url.endsWith(".ico"))
        {
                chain.doFilter(request, res);
        }
        else if((null == session) || session.getAttribute("uid") == null) {

            ((HttpServletResponse) res).sendRedirect("/login");
        }
        else {
            chain.doFilter(request, res);
        }


    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
