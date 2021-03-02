package action;

import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.JoinProSvc;
import vo.ActionForward;
import vo.UserBean;

public class JoinProAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		UserBean user = new UserBean();
		
		String emailPattern = "^[a-zA-Z0-9]+@[a-zA-Z0-9]+$";
		String phonePattern = "^01(?:0|1|[6-9]) - (?:\\d{3}|\\d{4}) - \\d{4}$";
		
		String peNumber = request.getParameter("peNumber").trim();
		
		if(Pattern.matches(emailPattern, peNumber)) {
			user.setUser_email(request.getParameter("peNumber"));
		} else if(Pattern.matches(phonePattern, peNumber)) {
			user.setTel(Integer.parseInt(request.getParameter("peNumber")));
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('E-mail 혹은 핸드폰 번호를 입력해 주세요');");
			out.println("history.back()");
			out.println("</script>");
		}
		user.setUser_name(request.getParameter("user_name"));
		user.setUser_nickname(request.getParameter("user_nickname"));
		user.setUser_password(request.getParameter("user_password"));
		
		JoinProSvc joinProSvc = new JoinProSvc();
		boolean isJoinSuccess = joinProSvc.joinUser(user);
		
		if(isJoinSuccess) {
			forward = new ActionForward();
			forward.setPath("home.html");
			forward.setRedireact(true);
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원등록실패');");
			out.println("history.back();");
			out.println("</script>");
		}
		
		return forward;
	}
}
