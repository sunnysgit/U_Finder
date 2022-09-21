package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import service.CommandProcess;

public class FindPwResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		result = md.resetPassword(id);
		
		return "findPwResult";
	}

}