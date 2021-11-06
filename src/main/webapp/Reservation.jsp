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
	<link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/Reservationbootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/ReservationCSS.css" />

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
						<div class="booking-bg"></div>
						<form action="insert" method="post">
							<div class="form-header">
								<h2>Make your reservation</h2>
							</div>
							
							
							<div class="form-group">
								<span class="form-label">User Name</span>
								<input class="form-control" type="text" name = "userName" placeholder="Enter user name">
							</div>
							
							
							<div class="form-group">
								<span class="form-label">Email</span>
								<input class="form-control" type="email" name = "email" placeholder="Enter your email">
							</div>
							
							
							
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Check In</span>
										<input class="form-control" type="date" name = "inDate" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Check Out</span>
										<input class="form-control" type="date" name = "outDate" required>
									</div>
								</div>
							</div>
							

							<div class="form-group">
								<span class="form-label">Room Type</span>
								<select class="form-control" type="email" name="room" placeholder="Select Room">
									<option value="Standard Single Room">Standard Single Room</option>
									<option value="Standard Double Room">Standard Double Room</option>
									<option value="Superior Double Room">Superior Double Room</option>
									<option value="Junior Suite">Junior Suite</option>
									<option value="Triple Room">Triple Room</option>
									<option value="Alpine Junior Suite">Alpine Junior Suite</option>
									<option value="Alpine Single Room">Alpine Single Room</option>
									<option value="Deluxe Double with Matterhorn View">Deluxe Double with Matterhorn View</option>
									<option value="Junior Suite with Matterhorn View">Junior Suite with Matterhorn View</option>
									<option value="Family Suite with Matterhorn View">Family Suite with Matterhorn View</option>
									<option value="Luxury Suite with Matterhorn View">Luxury Suite with Matterhorn View</option>
									<option value="Alpine Loft Suite with Matterhorn View">Alpine Loft Suite with Matterhorn View</option></select>
							</div>
							
				
				
				
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Space</span>
										<select class="form-control" name="space">
											<option value="18sq.m">18sq.m</option>
											<option value="20sq.m">20sq.m</option>
											<option value="26sq.m">26sq.m</option>
											<option value="29sq.m">29sq.m</option>
											<option value="32sq.m">32sq.m</option>
											<option value="35sq.m">35sq.m</option>
											<option value="60sq.m">60sq.m</option>
											<option value="80sq.m">80sq.m</option>
											<option value="88sq.m">88sq.m</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Guests</span>
										<select class="form-control" name="guest">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							
							
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Adults</span>
										<input class="form-control" type="text" name = "adult" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Children</span>
										<input class="form-control" type="text" name = "children" required>
									</div>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
									<span class="form-label">Beds</span>
									<select class="form-control" name="beds" >
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
								</div>
							</div>
						
							<div class="form-btn">
								<input class="submit-btn" class="sub" type="submit" value="Book Now">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>