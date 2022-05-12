package main.command;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import main.model.Main;
import main.service.WriteMainService;
import mvc.command.CommandHandler;

public class WriteMainHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/newMainForm.jsp";
	private WriteMainService mainService = new WriteMainService();
	private User user;
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		if (req.getSession().getAttribute("authUser") == null) {
			res.sendRedirect(req.getContextPath() + "/index.jsp");
			return null;
		} else {
			user = (User) req.getSession().getAttribute("authUser");
		}

		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req,
			HttpServletResponse res) {

		Main main = mainService.read(user.getId());

		req.setAttribute("main", main);
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req,
			HttpServletResponse res) {
		Main main = new Main(req.getParameter("memberid"),
				Integer.parseInt(req.getParameter("total_size")),
				Integer.parseInt(req.getParameter("com_heat")),
				Integer.parseInt(req.getParameter("com_clean")),
				Integer.parseInt(req.getParameter("com_ev")),
				Integer.parseInt(req.getParameter("com_es")),
				Integer.parseInt(req.getParameter("com_maintain")),
				Integer.parseInt(req.getParameter("com_insur")),
				Integer.parseInt(req.getParameter("com_labor")),
				Integer.parseInt(req.getParameter("com_water")),
				Integer.parseInt(req.getParameter("com_ele")));
		Main maina = mainService.write(main);
		boolean succeed = true;
		req.setAttribute("succeed", succeed);
		req.setAttribute("main", maina);
		return "read.do";
	}
}
