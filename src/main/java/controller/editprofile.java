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

@WebServlet("/editprofile")
public class editprofile extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/user/editprofile.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("post")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				UserDAO userDAO = new UserDAO();
				userDAO.update(user);
				req.setAttribute("message", "Cập nhật tài khoản thành công!");
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("message", "Lỗi cập nhật tài khoản!");
			}
		}
		req.getRequestDispatcher("/views/user/editprofile.jsp").forward(req, resp);
	}
}
