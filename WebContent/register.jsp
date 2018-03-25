<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration information</title>
</head>
<body>
<form action="Registercontroller" method="post">
<h4>Username:<input type="text" name="username" placeholder=" " value="${username}"></h4>

<h4>Password:<input type="password" name="password" placeholder=" "></h4>

<h4>Age:<input type="text" name="age" placeholder=" " value="${age}"></h4>

<h4>Gender:<input type="text" name="gender" placeholder=" " value="${gender}"></h4>

<h4>Phone:<input type="text" name="phone" placeholder=" " value="${phone}"></h4>

<h4>Address:<input type="text" name="address" placeholder=" " value="${address}"></h4>

<h4>Email:<input type="text" name="email" placeholder=" " value="${email}"></h4>

<input type="submit" value="submit">
</form>
</body>
</html>