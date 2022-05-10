package unit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.ArticlePage;
import article.service.ListArticleService;
import mvc.command.CommandHandler;
import unit.service.ListUnitService;
import unit.service.UnitPage;

public class ListUnitHandler implements CommandHandler {

	private ListUnitService listService = new ListUnitService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception{
		String pageNoVal = req.getParameter("pageNo");
		int pageNo =1;
		if(pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		UnitPage unitPage = listService.getUnitPage(pageNo);
		req.setAttribute("unitPage", unitPage);
			return "/WEB-INF/view/unitList.jsp";
		}

}
