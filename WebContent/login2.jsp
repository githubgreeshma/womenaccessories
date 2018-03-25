<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Women's accessories</title>

<link rel="stylesheet" href="css/access.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
var flag=0;

$("#hide").click(function(){

if(flag==0){
$("#row1 img").hide(2000);
flag=flag+1;
$("#hide").text("hide");
}

else{
$("#row1 img").show(2000);
flag=0;
$("#hide").text("show");
}

});
});

</script>

</head>


<body>



<div class="navbar navbar-default" id="set">
	<ul class="nav navbar-nav navbar-right">
		<li><a href="home.html"  class="btn btn-success"><u>Home</u></a></li>
		<li><a href="#" class="btn btn-success"><u>AboutUs</u></a></li>
		<li><a href="#" class="btn btn-success"><u>Contact</u></a></li>
	</ul>
</div>

<div>
	<p><a href="#" id="hide" class="btn btn-success">Home</a></p>
</div>



<div class="row" id="acc">
	<h1 id="amz"><font color="black"><b>BuyMore</b></font></h1>
		<p><font color="red" size="4"><b><u><t>Women's accessories</u></b></font>
		</p>
</div>

<div class="sty" id="siz">
	<div class=col-md-offset-1 col-md-3">
		<h1 id="best"><u>Best products with Best price and offers</u></h1>
</div>
</div>
<br>
<br>

<div class="rows">
<div  id="row1">
<div class="col-md-offset-1 col-md-3">
<img src="img/redtop.jpeg" style="width:70%">
<h1 id="text">Fancy Flower top</h1>
<p>Rs.750</p>
<p><a href="fancy.jsp" class="btn btn-primary">View</a></p>

</div>
</div>


<div id="row2">
<div class="col-md-offset-1 col-md-3">
<img src="img/blackheels.jpeg" style="width:80%">
<h1 id="text1">Black pointed heels</h1>
<p>Rs.1,500</p>
<p><a href="heels.html" class="btn btn-primary">View</a></p>
</div>
</div>

<div id="row3">
<div class="col-md-offset-1 col-md-3">
<img src="img/sandbag.jpeg" style="width:90%">
<h1 id="text2">Yellow Travel bag</h1>
<p>Rs.1,750</p>
<a href="sandbag.html" class="btn btn-primary">View</a>
</div>
</div>
</div>
<br>
<br>

<div class="rowt">
<div id="row4">
<div class="col-md-offset-1 col-md-3">
<img src="img/ring1.jpeg" style="width:70%">
<h1 id="text3">Gold Heart ring</h1>
<p>Rs.4,500</p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>

<div id="row5">
<div class="col-md-offset-1 col-md-3">
<img src="img/bluetop.jpeg" style="width:60%">
<h1 id="text4">Blue Kurtha</h1>
<p>Rs.650</p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>

<div id="row6">
<div class="col-md-offset-1 col-md-3">
<img src="img/boots.jpeg" style="width:90%">
<h1 id="text5">Brown boots</h1>
<p>Rs.1,950</p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>
</div>
<br><br>

<div class="rowu">
<div id="row7">
<div class="col-md-offset-1 col-md-3">
<img src="img/shoes1.jpeg" style="width:70%">
<h1 id="text6">Black Laced shoes</h1>
<p>Rs.1,350<p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>

<div id="row8">
<div class="col-md-offset-1 col-md-3">
<img src="img/earings.jpeg" style="width:65%">
<h1 id="text7">Tanishq Earings</h1>
<p>Rs.3,990<p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>

<div id="row9">
<div class="col-md-offset-1 col-md-3">
<img src="img/simpleheels.jpeg" style="width:90%">
<h1 id="text8">Laced Blue</h1>
<p>Rs.800<p>
<a href="#" class="btn btn-primary">View</a>
</div>
</div>
</div>

</body>
</html>