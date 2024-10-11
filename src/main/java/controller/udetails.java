package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.VideoDAO;
import entity.Video;

@WebServlet({"/userr/detail"})
public class udetails extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String itemId = req.getParameter("id");
		VideoDAO dao = new VideoDAO();
		Video video = dao.findById(itemId);
		video.setViews(video.getViews() + 1);
		req.setAttribute("random", dao.videoActive());
		req.setAttribute("form", video);
		req.getRequestDispatcher("/views/user/videoDetail.jsp").forward(req, resp);
	}
}
