package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.VideoDAO;
import entity.Video;

@WebServlet({ "/adminn"})
public class adminn extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		List<Video> list = dao.sortsByViews();
		req.setAttribute("homes", list);
		req.getRequestDispatcher("/views/admin/admin.jsp").forward(req, resp);
	}
}
