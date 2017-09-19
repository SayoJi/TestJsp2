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
		var f = 1;
		var searchValue = document.getElementById("searchSport").value;
		var obj = document.getElementById("sportSelect");
		for(i=0 ;i<obj.options.length ;i++){
			if(obj.options[i].indexOf(searchValue)){
				//新增option在最后
				obj.options.add(new Option(obj.options[i].innerText,obj.options[f].value));
				//重新赋值
				obj.options[f] = new Option(obj.options[i],obj.options[i]);
				obj.options.removes(i);
				f++;
			}
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
value = <%=request.getAttribute("temp") == null ? "" : request.getAttribute("temp") %> />
<select id = "sportSelect" name = "sportSelect">
	<option id = "basketball">basketball</option>
	<option id = "football">football</option>
	<option id = "badminton">badminton</option>
	<option id = "tabletennis">tabletennis</option>
</select>

</form>
</body>
</html>