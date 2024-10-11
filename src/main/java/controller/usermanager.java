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

@WebServlet({ "/usermanager/index", "/usermanager/create", "/usermanager/update", "/usermanager/delete",
		"/usermanager/edit/*" })
public class usermanager extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User users = new User();
		UserDAO userDAO = new UserDAO();
		String uri = req.getRequestURI();

		if (uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			users = userDAO.findById(id);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(users, req.getParameterMap());
				userDAO.insert(users);
				req.setAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Thêm mới thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(users, req.getParameterMap());
				userDAO.update(users);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				userDAO.delete(id);
				req.setAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}

		req.setAttribute("form", users);
		req.setAttribute("items", userDAO.findAll());
		req.getRequestDispatcher("/views/admin/usermanager.jsp").forward(req, resp);
	}
}
