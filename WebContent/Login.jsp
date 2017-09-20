<%@page import="java.text.SimpleDateFormat"%>
<%@page import = "java.util.Date"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<h3>Login</h3>
<form name = "loginInformation" action = "ShowUserInfo.jsp" method = "get">
	<table>
	 <tr>
	  <td>User Name</td>
	  <td>
	   <input type = "text" id = "userName" name = "userName" value = ""  />
	  </td>
	 </tr>
	 <tr>
	  <td>Pass Word</td>
	  <td>
	   <input type = "password" id = "passWord" name = "passWord" value = "" />
	  </td>
	  </tr>
	 <tr>
	  <td colspan = "2" align = "center"><input type = "submit" id = "loginBtn" value = "login"/></td>
	 </tr>
	</table>
</form>

 <a href = "ShowUserInfo.jsp?userName=哈哈&passWord=12345">URL传参</a> <br>
 请求客户端的IP地址：<%=request.getRemoteAddr() %><br>
 服务器端口号：<%=request.getServerPort() %><br>
 字符编码方式：<%=request.getCharacterEncoding() %><br>
 虚拟路径的真是路径：<%=request.getRealPath("Login.jsp") %><br>
 
 
 <h3>Session内置对象</h3>
 <%SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss"); 
 Date createTime = new Date(session.getCreationTime());
 Date lastTime = new Date(session.getLastAccessedTime());
 %>
 session创建时间：<%= sdf.format(createTime)%><br>
 session结束时间：<%=sdf.format(lastTime)%><br>
 session从开始到被取消的时间间隔：<%=session.getMaxInactiveInterval()%>s<br>
</body>
</html>