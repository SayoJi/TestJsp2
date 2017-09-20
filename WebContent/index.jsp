<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
 String searchValue = request.getParameter("searchSport");
 request.setAttribute("temp", searchValue);
%>

<script>
function search(){
	var event = window.event;
	if(event.keyCode == 13){
		
		var searchValue = document.getElementById("searchSport").value;
		var obj = document.getElementById("sportSelect");
		var f = obj.options.length;
		for(i=0 ;i< f;i++){
			if(obj.options[i].value.indexOf(searchValue) != -1){
				//新增option在最后
				obj.options.add(new Option(obj.options[i].innerText ,obj.options[i].value));
			}
			obj.options.remove(0);
		}
	}
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
Hello World
<form >
<input type = "text" name = "searchSport" id = "searchSport" onkeydown = "search()" 
value = <%=request.getAttribute("temp") == null ? " " : request.getAttribute("temp") %> />
 <select id = "sportSelect" name = "sportSelect">
	<option id = "basketball">basketball</option>
	<option id = "football">football</option>
	<option id = "badminton">badminton</option>
	<option id = "tabletennis">table tennis</option>
 </select>
</form>
缓冲区大小 ： <%=out.getBufferSize() %>byte<br>
缓冲区剩余大小：<%=out.getRemaining() %>byte<br>
<!-- There will be occur error run the out.clear() after out.flush. -->
<%out.flush(); 
  //out.clear(); //抛出异常
  out.clearBuffer();//不会抛出异常
  %>
是否自动清空缓冲区：<%=out.isAutoFlush() %><br>

</body>
</html>