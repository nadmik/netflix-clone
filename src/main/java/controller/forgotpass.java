package controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import entity.User;

@WebServlet("/forgotpassword")
public class forgotpass extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// Thong so ket noi SMTP Server
			Properties properties = new Properties();
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.port", "587");
			properties.put("mail.smtp.ssl.protocols", "TLSv1.2");

			// Ket noi SMTP Server
			Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					String username = "wwatermelonjuice@gmail.com";
					String password = "skjczwsdhinrxujy";
					
					return new PasswordAuthentication(username, password);
				}
			});
			String usernameID = req.getParameter("usernameID");
			String emailID = req.getParameter("emailID");
			UserDAO userDAO = new UserDAO();
			User user = userDAO.findById(usernameID);
			
			String from, to, subject, body;
			from = req.getParameter("wwatermelonjuice@gmail.com");
			to = emailID;
			subject = "in pass here";
			body = req.getParameter("body");

			// Tao message
			MimeMessage msg = new MimeMessage(session);
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			msg.setSubject(subject, "utf-8");
			msg.setText(body, "utf-8", "html");
			msg.setReplyTo(msg.getFrom());

			Transport.send(msg);
			req.setAttribute("message", "Gửi email thành công !");
		} catch (Exception e) {
			req.setAttribute("message", "Gửi email thất bại !");
			e.printStackTrace();
		}
		req.getRequestDispatcher("/views/user/forgotpassword.jsp").forward(req, resp);
	}
}
