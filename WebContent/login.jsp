<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>

<link rel="stylesheet" href="css/access.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>


<body>
<div class="col-md-offset-2 col-md-8">
<div class="back">
<div class="home" id="home">
<h1><font size="16"><b>BuyMore</b></font></h1>
<p><font color="red" size="4"><b><u><t>Women's accessories</u></b></font>
</p>
</div>

<div align="right">
<a href="register.jsp" class="btn btn-success">Register new account</a>
</div><br>

<section>
<div class="col-sm-3">
<img class="mySlides" src="img/highheels.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/pinkbag.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/peacock.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/saree.jpeg" style="width:175px;height:200px">
</div>

</section>
<br>
<br>


<div class="tab">
<table border="10" align="center">
<div id="login">
<form action="home.jsp"  method="post" >

<tr><td><h2><font color="black">LOGIN INFORMATION</font></h2></td></tr>
<tr><td>
<h4>Username<input type="text" name="Username" placeholder=" " ></h4>
</td></tr>

<tr><td>
<h4>Password<input type="password" name="Password" placeholder=" "></h4>
</td></tr>

<tr><td><input type="submit" value="submit"></td></tr>

</div>
</form>
</table>
</div>


<br>

<section>

<div class="col-sm-3">
<img class="mySlides" src="img/ring2.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/watch.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/brownbag.jpeg" style="width:175px;height:200px">
</div>

<div class="col-sm-3">
<img class="mySlides" src="img/makeup.jpeg" style="width:175px;height:200px">
</div>

</section>

</div>
</div>
</body>

</html>