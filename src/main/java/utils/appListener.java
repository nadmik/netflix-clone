package utils;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener("/index")
public class appListener implements HttpSessionListener, ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO: ghi số đếm trong application scope vào file
		ServletContext aplication = sce.getServletContext();
		Integer visitors = (Integer) aplication.getAttribute("visitors");
		try {
			String path = aplication.getRealPath("/visitors.txt");
			byte data[] = String.valueOf(visitors).getBytes();
			Files.write(Paths.get(path), data, StandardOpenOption.CREATE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO: đọc số đếm trước đây từ file vào application scope
		ServletContext application = sce.getServletContext();
		Integer visitors = 0;
		try {
			String path = application.getRealPath("/visitors.txt"); // dat tai webroot
			System.out.println(path);
			List<String> lines = Files.readAllLines(Paths.get(path));
			visitors = Integer.valueOf(lines.get(0));
		} catch (Exception e) {
			visitors = 1000; // khởi đầu số khách
		}
		application.setAttribute("visitors", visitors);
	}

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO: tăng số đếm trong application scope lên một
		HttpSession session = se.getSession();
		ServletContext application = session.getServletContext();
		Integer visitors = (Integer) application.getAttribute("visitors");
		application.setAttribute("visitors", visitors + 1);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub

	}
}
