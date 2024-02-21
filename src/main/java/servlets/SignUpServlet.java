package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/signup.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        if(username.isEmpty() || password == null  || password.isEmpty() || confirmPassword.isEmpty() ) {
            String error = "You must Fill Everything";
        }
        else{
            HttpSession session =  req.getSession();

            if(password.matches(confirmPassword)) {
                session.setAttribute("email", username);
                session.setAttribute("password", password);
                resp.sendRedirect("/login");

            }
        }


        }
}

