<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %> 
<%@ taglib uri= "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>      
<title>The Paradise-Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Bootstrap -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- add spring:url -->
<spring:url value="/resources/css/style.css" var="styleCSS" />
<spring:url value="/resources/css/fwslider.css" var="sliderCSS" />
<spring:url value="/resources/css/jquery-ui.css" var="jqueryCSS" />
<spring:url value="/resources/css/JFGrid.css" var="JFGridCSS" />
<spring:url value="/resources/css/JFFormStyle-1.css" var="JFFormCSS" />
<spring:url value="/resources/css/js-image-slider.css" var="imageSliderCSS" />


<spring:url value="/resources/js/jquery.min.js" var="JQuerymin" />

<spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" var="googleApi" /> 
<spring:url value="/resources/js/jquery-ui.min.js" var="JQueryuimin" />
<spring:url value="/resources/js/css3-mediaqueries.js" var="mediaqueries" />
<spring:url value="/resources/js/fwslider.js" var="fwslider" />
<spring:url value="/resources/js/JFCore.js" var="JFCore" />
<spring:url value="/resources/js/JFForms.js" var="JFForm" />
<spring:url value="/resources/js/jquery-ui.js" var="jqueryui" />
<spring:url value="/resources/js/script.js" var="script" />



<!-- end spring:url -->

<link href="${sliderCSS}" rel="stylesheet" media="all" />
<link href="${styleCSS}" rel="stylesheet" type="text/css" media="all" />
<link href="${jqueryCSS}" rel="stylesheet" />
<link href="${JFGridCSS}" rel="stylesheet" type="text/css" />
<link href="${JFFormCSS}" rel="stylesheet" type="text/css" />
<link href="${imageSliderCSS}" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

<script src="${JQuerymin}"></script>
<script src="${JQueryuimin}"></script>
<script src="${mediaqueries}"></script>
<script src="${fwslider}"></script>
<script src="${JFcore}"></script>
<script src="${JFForm}"></script>
<script src="${jqueryui}"></script>
<script src="${script}"></script>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>


<!-- Collapsible table -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- Collapsing test -->
</head>

<body>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="welcome"><img src="resources/images/logo.png" alt=""></a>
		</div>
		<div class="h_right">
			<!--start menu -->
			<ul class="menu">
				<li><a href="welcome">Home</a></li> |
                <li><a href="aboutUs">About us</a></li>|
				<li><a href="book">Book a Room</a></li> |
				<li><a href="gallery">Photo Gallery</a></li> |
				<li><a href="contact">Contact Us</a></li>|
				 <li><a href="login">Login/SignUp</a></li>
				<div class="clear"></div>
			</ul>
			<!-- start profile_details -->
					
		</div>
        </div>
</div>
<div class="clear"></div>
</div>

<!-- Side bar -->
	<div class="sidebar">

		<h4>New Search</h4>			
				<form action="search" method="GET">
					<select id="country" onchange="change_country(this.value)"
						class="frm-field required" name="bedType">						
						<option value="Suite">Suite room</option>
						<option value="Single">Single room</option>
						<option value="Double">Double room</option>
					</select>

					<h5>Check-in Date:</h5>
					<div class="book_date">
						<input class="date" name="checkIn" id="datepicker" type="text"
							value="DD/MM/YY" onfocus="this.value = '';"
							onblur="if (this.value == '') 
                             {this.value = 'DD/MM/YY';}">
					</div>

					<h5>Check-out Date:</h5>
					<div class="book_date">
						<input class="date" id="datepicker1" type="text" name="checkOut"
							value="DD/MM/YY" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
					</div>

					<h5>Number of Guest</h5>
					<div class="section_room">
						<select id="country" onchange="change_country(this.value)"
							class="frm-field required" name="guestNum">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</div>

					<div class="date_btn">
						<input type="submit" value="Search" />
					</div>
				</form>
	</div> <!-- Side bar ends -->



	<div id="content">

		<c:if test="${not empty room}">
			<p>
			<p>
			<p><img src="resources/images/${room.imageTitle}" alt="" width="800px" heigh="533px"/></p>
			<p>${room.roomType}</p>
			<br />			
			<p>${room.price}</p>
			<br />			
			<p>${room.description})</p>
			<br />
			<p>Amenities</p>
			<c:if test="${room.breakfast==1}">Breakfast</c:if> </br>
			<c:if test="${room.dinner==1}">Dinner</c:if> </br>
			<c:if test="${room.spa==1}">Spa</c:if> </br>
			<br />
			<br />
			<div class="date_btn2">
			<button class="btn" data-toggle="collapse" data-target="#bookingsByDate">Bookings By Date</button>
			<div id="bookingsByDate" class="collapse">
	<form action="searchBookings" method="POST" >	
			<ul>				
				<li  class="span1_of_1 left">
					<h5>check-in-date:</h5>
					<div class="book_date">						
							<input class="date" name="checkIn"
                             id="datepicker" type="text" value="DD/MM/YY" 
                             onfocus="this.value = '';" onblur="if (this.value == '') 
                             {this.value = 'DD/MM/YY';}">						
					</div>					
				</li>
				<li  class="span1_of_1 left">
					<h5>check-out-date:</h5>
					<div class="book_date">						
							<input class="date" id="datepicker1" type="text" name="checkOut"
							value="DD/MM/YY" onfocus="this.value = '';" 
							onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">						
					</div>		
				</li>				
				<li class="span1_of_3">
					<div class="date_btn">                                       
							<input type="submit" value="Search Bookings" />						
					</div>
				</li>
				<div class="clear"></div>
			</ul>
			</form>
</div>			
				<button class="btn" data-toggle="collapse" data-target="#detailConfirm">Confirm</button>
					<div id="detailConfirm" class="collapse">
						<div id="roomDetails">
							<Label>Room Type</Label>${room.roomType}
							<Label>Bed Type</Label>${room.bedType}
							<Label>Check In Date</Label> ${checkIn}
							<Label>Check Out Date</Label> ${checkOut}
							<Label>Number of Guest</Label> ${guestNum}
							<Label>Price</Label> ${room.price}
						</div>
					
						<form action="confirmBooking">
							<input type="hidden" value="roomDetails" name="currentPage">
							<input type="submit" value="Confirm" size="50px">
						</form>
					</div>					
			</div>
		</c:if>
	</div>



	<!-- <div id="sliderFrame" >
        <div id="slider">
            
            <img src="resources/images/i1.jpg" alt="" />
            <img src="resources/images/i2.jpg"  alt="" />
            <img src="resources/images/i3.jpg" alt="" />
            <img src="resources/images/i4.jpg" alt="" />
            <img src="resources/images/i5.jpg" />
            
        </div>
        
     </div> -->
     
      	 

</html>
