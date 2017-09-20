<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id = "userBean" scope = "page" class = "com.po.User" />
<jsp:setProperty name = "userBean" property = "*" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%String oldName = request.getParameter("userName");
	  String name = new String(oldName.getBytes("ISO8859-1"),"utf-8");%>
	
	<table>
	 <tr>
	  <td>
	  User Name : 
	  <%=//userBean.getUserName()
	  	//获取中文会乱码，需要在前面做处理，设为utf-8
	       request.getParameter("userName")
	  %>
	  </td>
	 </tr>
	 <tr>
	  <td>
	  Pass Word ：
	  <%=//userBean.getPassWord()
	       request.getParameter("passWord")%>
	  </td>
	 </tr>
	</table>
</body>
</html>