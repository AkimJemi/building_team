package unit.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import unit.service.DeleteUnitService;
import unit.service.PermissionDeniedException;
import unit.service.ResetUnitService;
import unit.service.UnitNotFoundException;

public class ResetUnitHandler implements CommandHandler {

	private ResetUnitService resetService = new ResetUnitService();
	int no;

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		  String noVal = req.getParameter("no"); no = Integer.parseInt(noVal);
		  
		  try {
		  
			  resetService.reset(no); } catch (UnitNotFoundException e) {
		  res.sendError(HttpServletResponse.SC_NOT_FOUND); return null; } catch
		  (PermissionDeniedException e) {
		  res.sendError(HttpServletResponse.SC_NOT_FOUND);
		  
		  } return "/unit/read.do?no=" + no;
		 
	}
}
