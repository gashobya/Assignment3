package servlets;

import javax.servlet.http.HttpServlet;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailServlet extends HttpServlet {
    public void javaMail (String email){

        // Replace these values with your email configuration
        String host = "smtp.gmail.com";
        String username = "ingabireolivier99@gmail.com";
        String password = "olivierchanel";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Admission Form Submission Confirmation");
            message.setText("Hello Admission received successfully! Kindly wait for the admission team to get in contact with you soon..\n\n"
                    + "Best regards,\nXYZ University");

            Transport.send(message);

            System.out.println("Email sent successfully!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
