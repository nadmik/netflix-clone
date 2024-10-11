package webFilter;

import javax.servlet.http.HttpServletRequest;

public class XHttp {
	private static HttpServletRequest request;

	public static void setRequest(HttpServletRequest request) {
		XHttp.request = request;
	}

	public static HttpServletRequest getRequest() {
		return XHttp.request;
	}

	public static String getRealPath(String path) {
		return getRequest().getServletContext().getRealPath(path);
	}
}
