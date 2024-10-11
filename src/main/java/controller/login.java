package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import DAO.UserDAO;
import cookies.cookies;
import entity.User;

@WebServlet({ "/login" })
public class login extends HttpServlet {
	cookies cookies = new cookies();
	User user = new User();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username, password;
		boolean rememberme;
		username = cookies.get("username", req);
		password = cookies.get("password", req);
		rememberme = Boolean.parseBoolean(cookies.get("rememberme", req));

		if (username != null && !username.isEmpty()) {
			req.setAttribute("username", username);
			req.setAttribute("password", password);
			req.setAttribute("rememberme", rememberme);
		}

		req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		try {
			UserDAO userDAO = new UserDAO();
			User user = userDAO.findById(username);

			if (!user.getId().equalsIgnoreCase(username)) {
				req.setAttribute("message", "sai ten dang nhap");
			} else if (!user.getPassword().equalsIgnoreCase(password)) {
				req.setAttribute("message", "sai mat khau dang nhap");
			} else if (user.getId().equalsIgnoreCase(username) && user.getPassword().equalsIgnoreCase(password)) {
				req.setAttribute("message", "dang nhap thanh cong");
				int hours = (user.getRememberme() == null) ? 0 : 60 * 60 * 24;
				cookies.add("username", user.getId(), hours, resp);
				cookies.add("password", user.getPassword(), hours, resp);
				cookies.add("rememberme", user.getRememberme() != null ? "true" : "false", hours, resp);
				req.getSession().setAttribute("user", user);
				if (user.getAdmin() == true) {
					req.getRequestDispatcher("/views/admin/admin.jsp").forward(req, resp);
				} else if (user.getAdmin() == false) {
					req.getRequestDispatcher("/views/user/user.jsp").forward(req, resp);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
