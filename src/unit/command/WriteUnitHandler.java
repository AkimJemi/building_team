package unit.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import unit.model.Unit;
import unit.service.WriteUnitService;

public class WriteUnitHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/unitForm.jsp";
	private WriteUnitService writeService = new WriteUnitService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
        Unit unit =  new Unit(
        		Integer.parseInt(req.getParameter("no")) ,
        		req.getParameter("name"),
        		req.getParameter("hire"),
        		req.getParameter("lease"),
        		Integer.parseInt(req.getParameter("rent_fee")),
        		req.getParameter("period"),
        		Integer.parseInt(req.getParameter("size"))
        		);
//		User user = (User) req.getSession(false).getAttribute("authUser");
//		WriteRequest writeReq = createWriteRequest(unit, req);
//		writeReq.validate(errors);

		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		int newUnitNo = writeService.write(unit);
		req.setAttribute("newUnitNo", newUnitNo);
		

		return "/WEB-INF/view/newUnitSuccess.jsp";
	}
}
