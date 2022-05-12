package unit.command;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import unit.model.Unit;
import unit.service.ReadUnitService;
import unit.service.UnitContentNotFoundException;
import unit.service.UnitNotFoundException;

public class ReadUnitHandler implements CommandHandler {

	private ReadUnitService readService = new ReadUnitService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);
		try {
			Unit unit = readService.getContent(no);
			int d = unit.getRent_fee();
			String rent_fee = toNumberFormat(d);

			req.setAttribute("rent_fee", rent_fee);
			req.setAttribute("unit", unit);
			return "/WEB-INF/view/unitReadForm.jsp";
		} catch (UnitNotFoundException | UnitContentNotFoundException e) {
			req.getServletContext().log("no unitContent", e);
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
	}

	public String toNumberFormat(long totalAmount) {

		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(totalAmount);
	}
}
