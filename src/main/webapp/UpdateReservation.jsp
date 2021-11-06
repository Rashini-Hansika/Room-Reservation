<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Cardo:700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/Customerbootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/UpdateResCSS.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
							<%
								String username = request.getParameter("userName");
								String eMail = request.getParameter("email");
								String indate = request.getParameter("inDate");
								String outdate = request.getParameter("outDate");
								String room = request.getParameter("room");
								String space = request.getParameter("space");
								String guests = request.getParameter("guest");
								String adults = request.getParameter("adult");
								String children = request.getParameter("children");
								String beds = request.getParameter("beds");
							%>


							<form  action="update" method="post">
							<fieldset>
							<table>
								<tr>
									<td>User Name</td>
									<td><input type="text" name="userName" value="<%= username %>" readonly><br></td>
								</tr>
								<tr>
									<td>Email</td>
									<td><input type="text" name="email" value="<%= eMail %>" readonly><br></td>
								</tr>
								<tr>
									<td>Check-in-date</td>
									<td><input type="text" name="inDate" value="<%= indate %>"><br></td>
								</tr>
								<tr>
									<td>Check-out-date</td>
									<td><input type="text" name="outDate" value="<%= outdate %>"><br></td>
								</tr>
								<tr>
									<td>Room Type</td>
									<td><input type="text" name="room" value="<%= room %>"><br></td>
								</tr>					
								<tr>					
									<td>Space</td>
									<td><input type="text" name="space" value ="<%= space %>"></td>
								</tr>
								<tr>					
									<td>Guests</td>
									<td><input type="text" name="guest" value="1" value="<%= guests %>"></td>
								</tr>
								<tr>								
									<td>Adult</td>
									<td><input type="text" name="adult" value="<%= adults %>"><br></td>
								</tr>
								<tr>
									<td>Children</td>
									<td><input type="text" name="children" value="<%= children %>"><br></td>
								</tr>
								<tr>
									<td>Beds</td>
									<td><input type = "text" name="beds" value ="<%= beds %>"></td>
								</tr>
								<tr>
									<td><input name="sub" type="submit" value="Update Data"></td>
								</tr>
							</table>
							</fieldset>
							</form>
														
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>