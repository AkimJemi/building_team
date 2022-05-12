package main.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import main.model.Main;
import main.service.WriteMainService;
import mvc.command.CommandHandler;
import sub.model.Sub;
import unit.model.Unit;

public class ReadMainHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/ReadMainForm.jsp";
	private WriteMainService mainService = new WriteMainService();
	private Map<String, String> result = new HashMap<>();

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		User user;
		if (request.getSession().getAttribute("authUser") != null) {
			user = (User) request.getSession().getAttribute("authUser");;
		} else {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return null;
		}
		Main main = mainService.read(user.getId());
		
		result = toString(main);
		
		request.setAttribute("main", result);
		return FORM_VIEW;
	}
	
	
	public Map<String, String> toString(Main main) {
		String total_size = String.format("%,d", main.getTotal_size());
		String com_heat = String.format("%,d", main.getCom_heat());
		String com_clean = String.format("%,d", main.getCom_clean());
		String com_ev = String.format("%,d", main.getCom_ev());
		String com_es = String.format("%,d", main.getCom_es());
		String com_maintain = String.format("%,d", main.getCom_maintain());
		String com_insur = String.format("%,d", main.getCom_insur());
		String com_labor = String.format("%,d", main.getCom_labor());
		String com_water = String.format("%,d", main.getCom_water());
		String com_ele = String.format("%,d", main.getCom_ele());
		result.put("total_size", total_size);
		result.put("com_heat", com_heat);
		result.put("com_clean", com_clean);
		result.put("com_ev", com_ev);
		result.put("com_es", com_es);
		result.put("com_maintain", com_maintain);
		result.put("com_insur", com_insur);
		result.put("com_labor", com_labor);
		result.put("com_water", com_water);
		result.put("com_ele", com_ele);
		result.put("memberid", main.getMemberid());
		return result;
	}

}
