package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import DAO.UserDAO;
import entity.User;

@WebServlet({ "/signup" })
public class signup extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/user/signup.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, req.getParameterMap());
			UserDAO userDAO = new UserDAO();
			userDAO.insert(user);
			req.setAttribute("message", "Đăng ký thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("message", "Lỗi đăng ký!");
		}
		req.getRequestDispatcher("/views/user/signup.jsp").forward(req, resp);
	}
}
