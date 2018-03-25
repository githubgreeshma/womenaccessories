<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>information</title>

<link rel="stylesheet" href="css/access.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<div class="col-sm-offset-2 col-sm-8">
<div class="header">
<h1><font color="yellow" size="10">BuyMore</font></h1>
<p><font color="red" size="4"><b><u>Women's accessories</u></b></font></p>
</div>


<div class="tab">
<div class="form" id="table">

<table  align="center">
<tr>
<td>
<h1>Details of the buyer</h1>
</td>
</tr>

<form action="Updatebuy" method="post">
<tr>
<td>
<h4><b>Name:</b><input type="text" name="name" placeholder=" " value="${name}"></h4><br>
</td>
</tr>

<tr>
<td>
<h2>Address</h2>
</td>
</tr>


<tr>
<td>
<h4><b>Dr no. :</b><input type="text" name="dr_no" placeholder=" " value="${dr_no}"></h4>
</td>
</tr>

<tr>
<td>
<h4><b>Street:</b><input type="text" name="street" placeholder=" " value="${street}"></h4>
</td>
</tr>

<tr>
<td>
<h4><b>City:</b><input type="text" name="city" placeholder=" " value="${city}"></h4>
</td>
</tr>


<tr>
<td>
<h4><b>State:</b><input type="text" name="state" placeholder=" " value="${state}"></h4>
</td>
</tr>

<tr>
<td>
<h4><b>Pincode:</b><input type="text" name="pincode" placeholder=" " value=""></h4>
</td>
</tr>

<tr>
<td>
<h4><b>Email:</b><input type="text" name="email" placeholder=" " value="${email}"></h4>
</td>
</tr>

<tr>
<td>
<h4><b>Phone:</b><input type="text" name="phone" placeholder=" " value="${phone}"></h4>
</td>
</tr>
<tr>
<td>
<input type="submit" value="Update" ><input type="submit" value="Search">
</td>
</tr>

</form>
<br><br>

<div>
<img src="img/redtop.jpeg" style="width:30%">
</div>

</table>



</div>
</div>
</div>

</body>
</html>