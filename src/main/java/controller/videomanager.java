package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import DAO.VideoDAO;
import entity.Video;
@MultipartConfig
@WebServlet({ "/videomanager/index", "/videomanager/create", "/videomanager/update", "/videomanager/delete",
		"/videomanager/edit/*" })
public class videomanager extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO videoDAO = new VideoDAO();
		Video video = new Video();

		String uri = req.getRequestURI();

		if (uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			video = videoDAO.findById(id);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(video, req.getParameterMap());
				videoDAO.insert(video);
				req.setAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Thêm mới thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(video, req.getParameterMap());
				videoDAO.update(video);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				videoDAO.delete(id);
				req.setAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}
		req.setAttribute("form", video);
		req.setAttribute("items", videoDAO.findAll());
		req.getRequestDispatcher("/views/admin/videomanager.jsp").forward(req, resp);
	}
}
