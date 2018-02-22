<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// 캐시 제거를 위한 코드
	response.setHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "No-cache");
	response.setDateHeader("Expires", 1L);
	// 파라미터 한글처리
	request.setCharacterEncoding("utf-8");
	// 로그인 여부 확인을 위한 변수
	boolean isLogin = false;
	// 코드 흐름을 제어하기 위한 파라미터 추출
	String mode = request.getParameter("mode");
	// 파라미터로 분기한다.
	String site = null;
	switch(mode){
	case "login_main" :
		site = "login_main.jsp";
		isLogin = false;
		break;
	case "login_pro" :
		site = "login_pro.jsp";
		isLogin = false;
		break;
	}
	// 로그인 확인 처리
	if(isLogin == true){
		// 세션으로부터 객체 추출한다.
		// 로그인이 되어 있지 않으면 로그인 페이지의
		// 주소를 넣어준다.
		site = "로그인 페이지";
	}
	// 이동한다.
	RequestDispatcher dis = request.getRequestDispatcher(site);
	dis.forward(request, response);
%>












