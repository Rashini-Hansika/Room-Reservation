<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Reservation</title>
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
	<link type="text/css" rel="stylesheet" href="css/AccountCSS.css" />

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
						<table border = "2" width = 100%>
							<c:forEach var = "cu" items="${cusDetails}">
	
							<c:set var="userName" value="${cu.userName}"/>
							<c:set var="email" value="${cu.email}"/>
							<c:set var="inDate" value="${cu.inDate}"/>
							<c:set var="outDate" value="${cu.outDate}"/>
							<c:set var="room" value="${cu.room}"/>
							<c:set var="space" value="${cu.space}"/>
							<c:set var="guest" value="${cu.guest}"/>
							<c:set var="adult" value="${cu.adult}"/>
							<c:set var="children" value="${cu.children}"/>
							<c:set var="beds" value="${cu.beds}"/>
	
	
	 
							<tr>
								<td>User Name</td>
								<td>${cu.userName}</td>
							</tr>
							<tr>
								<td>Email</td>
								<td>${cu.email}</td>
							</tr>
							<tr>
								<td>Check-in-date</td>
								<td>${cu.inDate}</td>
							</tr>
							<tr>
								<td>Check-out-date</td>
								<td>${cu.outDate}</td>
							</tr>
							<tr>
								<td>Room type</td>
								<td>${cu.room}</td>
							</tr>
							<tr>
								<td>Space</td>
								<td>${cu.space}</td>
							</tr>
							<tr>
								<td>Guests</td>
								<td>${cu.guest}</td>
							</tr>
							<tr>
								<td>Adult</td>
								<td>${cu.adult}</td>
							</tr>
							<tr>
								<td>Children</td>
								<td>${cu.children}</td>
							</tr>
							<tr>
								<td>Beds</td>
								<td>${cu.beds}</td>
							</tr>
							</c:forEach> 
							</table>
							
							
							<c:url value = "UpdateReservation.jsp" var="resUpdate">
								<c:param name="userName" value = "${userName}"/>
								<c:param name="email" value = "${email}"/>
								<c:param name="inDate" value = "${inDate}"/>
								<c:param name="outDate" value = "${outDate}"/>
								<c:param name="room" value = "${room}"/>
								<c:param name="space" value = "${space}"/>
								<c:param name="guest" value = "${guest}"/>
								<c:param name="adult" value = "${adult}"/>
								<c:param name="children" value = "${children}"/>
								<c:param name="beds" value = "${beds}"/>
							</c:url>
							
							
							<a href = "${resUpdate}">
							<input type="button" name = "Update" value = "Update Reservation">
							</a>
							
							
							<c:url value = "DeleteReservation.jsp" var = "resDelete">
								<c:param name="userName" value = "${userName}"/>
								<c:param name="email" value = "${email}"/>
								<c:param name="inDate" value = "${inDate}"/>
								<c:param name="outDate" value = "${outDate}"/>
								<c:param name="room" value = "${room}"/>
								<c:param name="space" value = "${space}"/>
								<c:param name="guest" value = "${guest}"/>
								<c:param name="adult" value = "${adult}"/>
								<c:param name="children" value = "${children}"/>
								<c:param name="beds" value = "${beds}"/> 
							</c:url>
							
							<a href="${resDelete}">
							<input type = "button" name= "delete" value="Delete Reservation">
							</a>
							
								
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>