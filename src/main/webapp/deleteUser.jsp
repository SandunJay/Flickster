<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Delete Account</h1>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>
	
		
	<form action="deleteUser" method="post">
		User ID <input type="text" name="userid" value="<%=id%>" readonly><br>
		Name <input type="text" name="name" value="<%=name%>" readonly><br>
		Phone number <input type="text" name="phone" value="<%=phone%>" readonly><br>
		Email <input type="text" name="email" value="<%=email%>" readonly><br>
		User name <input type="text" name="uname" value="<%=username%>" readonly><br>
		
		<input type="submit" name="submit" value="delete account"><br>
	</form>
	
</body>
</html>