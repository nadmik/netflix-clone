package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReportDAO;
import DAO.VideoDAO;
import entity.Video;

@WebServlet({ "/report", "/report/videott", "/report/shares" })
public class report extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReportDAO reportDAO = new ReportDAO();
		req.setAttribute("report", reportDAO.getInfor());
		VideoDAO videoDAO = new VideoDAO();

		List<Video> title = videoDAO.findAll();
		req.setAttribute("titles", title);
		String method = req.getMethod();
		if (method.equalsIgnoreCase("get")) {
			String idVideo = req.getParameter("idVideo");
			if (idVideo == null) {
				idVideo = title.get(0).getId();
				List<Object[]> list = reportDAO.callProcByVideoTitle(idVideo);
				req.setAttribute("user", list);
			} else {
				List<Object[]> list = reportDAO.callProcByVideoTitle(idVideo);
				req.setAttribute("user", list);
			}
		}
		req.getRequestDispatcher("/views/admin/report.jsp").forward(req, resp);
	}
}
