package servlets;

import javax.servlet.Filter;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        System.out.println("Okayyyyy");


        HttpSession session = httpRequest.getSession();
        String loginURI = httpRequest.getContextPath() +"/login";
        String signupURI = httpRequest.getContextPath()+ "/signup";
        boolean loggenIn = session != null && session.getAttribute("email") != null;
        boolean loginRequest = httpRequest.getRequestURI().equals(loginURI);
        boolean signupReguest = httpRequest.getRequestURI().equals(signupURI);
        System.out.println(signupURI);

        if(loggenIn || loginRequest || signupReguest){
            filterChain.doFilter(request,response);
            System.out.println("In");
        }
        else{
            httpResponse.sendRedirect(signupURI);
            System.out.println("Out");
        }

    }

    @Override
    public void destroy() {

    }
}
