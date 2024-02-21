package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdmissionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        System.out.println(email);
        MailServlet mail = new MailServlet();
        mail.javaMail(email);
        getServletContext().getRequestDispatcher("/AdmissionSent.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("yabababab");
        getServletContext().getRequestDispatcher("/Admission.jsp").forward(req,resp);
    }
}
