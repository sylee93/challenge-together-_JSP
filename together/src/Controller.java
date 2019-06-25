import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.InterfaceForAction;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, Object> commandMap = new HashMap<String, Object>();
//	private Map<String, Object> viewMap = new HashMap<String, Object>();	

	public void init(ServletConfig config) throws ServletException {
		String props = config.getInitParameter("config");

		System.out.println("[Controller.java] init() props = [" + props + "]");
	
		Properties pr = new Properties();
		FileInputStream f = null;

		try {
			String configFilePath = config.getServletContext().getRealPath(props);
			System.out.println("[Controller.java] init() configFilePath = [" + configFilePath + "]");
			f = new FileInputStream(configFilePath);
			pr.load(f);
		} catch (Exception e) {
			throw new ServletException(e);
		} finally {
			if (f != null) {
				try {
					f.close();
				} catch (IOException e2) {
					e2.printStackTrace();
				}
			}
		}

		Iterator<Object> keyIter = pr.keySet().iterator();
		
		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();
			System.out.println("[Controller.java] init() command=[" + command + "]");
			String className = pr.getProperty(command);
			System.out.println("[Controller.java] init() className=[" + className + "]");
			try {
				@SuppressWarnings("unchecked")
				Class<InterfaceForAction> actionClass = (Class<InterfaceForAction>) Class.forName(className); // 해당 문자열을
																												// 클래스로
																												// 만든다.
				Object actionInstance = actionClass.newInstance();
				commandMap.put(command, actionInstance);
			} catch (Exception e) {
				throw new ServletException(e);
			}
		}
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		requestPro(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * 사용자의 요청을 분석해서 해당 작업을 처리
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String view = null;
		InterfaceForAction action = null;
		request.setCharacterEncoding( "utf-8");

		try {
			String urn = request.getRequestURI();
			System.out.println("[Controller.java] requestPro() uri=>" + urn 
					+ ", request.getContextPath() =>" + request.getContextPath());
			urn = urn.substring(request.getContextPath().length());
			action = (InterfaceForAction) commandMap.get(urn);
			System.out.println("[Controller.java] requestPro() command=>" + urn); 
			System.out.println("[Controller.java] requestPro() com=>" + action); 

			view = action.requestPro(request, response);
			System.out.println("[Controller.java] requestPro() view=>" + view); 
		} catch (Throwable e) {
			throw new ServletException(e);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
