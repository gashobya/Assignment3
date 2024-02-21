import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        String email = session.getAttribute("email").toString();
        String password = session.getAttribute("password").toString();
        String loginEmail = req.getParameter("email");
        String loginPassword = req.getParameter("password");
        String test = email+" "+loginPassword+ " "+loginEmail;

        req.setAttribute("test",test);;

        if(loginEmail == null || loginEmail.isEmpty() ||  loginPassword == null || loginPassword.isEmpty() ){
            String error = "Please fill all Fields";
            req.setAttribute("error",error);
            getServletContext().getRequestDispatcher("/Login.jsp").forward(req,resp);

        }else{
            if(email.isEmpty() || password.isEmpty() || !email.matches(loginEmail) || !password.matches(loginPassword)){
                String result = "User does not Exist";
                req.setAttribute("result",result);
//                req.setAttribute("error",result);
                getServletContext().getRequestDispatcher("/Login.jsp").forward(req,resp);

            }
            else{
                System.out.println("Okayyy");
                resp.sendRedirect("/admission");
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Login.jsp").forward(req,resp);
    }
}
