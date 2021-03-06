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

<!-- Collapsible table -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- Collapsing test -->

</head>

<body>
<div class="container">

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
				<li><a href="gallery.html">Photo Gallery</a></li> |
				<li><a href="activities.html">Map</a></li> |
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

<!-- Admin menu -->
<div class=admin style="{border-style: solid, border-color: black}">
	<button class="btn" data-toggle="collapse" data-target="#newRooms">Add New Rooms</button>
	<button class="btn" data-toggle="collapse" data-target="#viewRooms">View All Rooms</button>
	<button class="btn" data-toggle="collapse" data-target="#bookingsByDate">Bookings By Date</button>
	
	<div class="dropdown">
			<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Bookings By Floor<span class="caret"></span></button>
				<ul class="dropdown-menu">
					<li><a href="#" data-toggle="collapse" data-target="#f2Bookings">F1 (Single)</a></li>
					<li><a href="#" data-toggle="collapse" data-target="#f3Bookings">F2 (Double)</a></li>
					<li><a href="#" data-toggle="collapse" data-target="#f4Bookings">F3 (Suite)</a></li>
				</ul>
	</div>

</div>
<!-- Admin menu ends -->

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

<c:if test="${not empty bookings}">
	<table>
		<tr>
			<td>Room Number</td>
			<td>Check In</td>
			<td>Check Out</td>
			<td>Number of Guest</td>
		</tr>
		<c:forEach var="booking" items="${bookings}">
			<tr>
				<td>${booking.roomNumber}</td>
				<td>${booking.checkIn}</td>
				<td>${booking.checkOut}</td>
				<td>${booking.guestNum}</td>
			</tr>	
		</c:forEach>	
	</table>
</c:if>


<!-- 2nd Floor bookings -->
<div id=f2Bookings class="collapse">
2nd Floor
	<table>
		<tr>
			<td>Room Number</td>
			<td>Check In</td>
			<td>Check Out</td>
			<td>Number of Guest</td>
		</tr>
		<c:forEach var="booking" items="${floor2}">
			<tr>
				<td>${booking.roomNumber}</td>
				<td>${booking.checkIn}</td>
				<td>${booking.checkOut}</td>
				<td>${booking.guestNum}</td>
			</tr>	
		</c:forEach>
	</table>
</div>

<!-- 3nd Floor bookings -->
<div id=f3Bookings class="collapse">
3rd Floor
	<table>
		<tr>
			<td>Room Number</td>
			<td>Check In</td>
			<td>Check Out</td>
			<td>Number of Guest</td>
		</tr>
		<c:forEach var="booking" items="${floor3}">
			<tr>
				<td>${booking.roomNumber}</td>
				<td>${booking.checkIn}</td>
				<td>${booking.checkOut}</td>
				<td>${booking.guestNum}</td>
			</tr>	
		</c:forEach>
	</table>
</div>

<!-- 4th Floor bookings -->
<div id=f4Bookings class="collapse">
4th Floor
	<table>
		<tr>
			<td>Room Number</td>
			<td>Check In</td>
			<td>Check Out</td>
			<td>Number of Guest</td>
		</tr>
		<c:forEach var="booking" items="${floor4}">
			<tr>
				<td>${booking.roomNumber}</td>
				<td>${booking.checkIn}</td>
				<td>${booking.checkOut}</td>
				<td>${booking.guestNum}</td>
			</tr>	
		</c:forEach>
	</table>
</div>

<!-- Adding a new room -->
<div id=newRooms class="collapse">
	<form action="newRoom" method="GET">
		Room Number
		<input type="text" name="roomNumber"><br/>
	
		Room Type
		<select name="roomType" >
							<option >Select a type of room</option>
				            <option value="Suite">Suite room</option>
				            <option value="Single">Single room</option>
							<option value="Double">Double room</option>
		</select>
		Bed Type
		<select name="bedType" >
							<option>Select a type of room</option>
				            <option value="King">King</option>
				            <option value="Queen">Queen</option>
							<option value="Double">Double</option>
		</select>
		Room Image
		<select name="image" >
							<option>Select a type of room</option>
				            <option value="single1.jpg">Single 1</option>
				            <option value="single2.jpg">Single 2</option>
							<option value="double1.jpg">Double 1</option>
							<option value="double2.jpg">Double 2</option>
							<option value="suite1.png">Suite 1</option>
							<option value="suite2.jpg">Suite 2</option>
		</select>
		<br/>
		Room description
		<textarea rows="4" cols="50" name="description">
		Enter description for the room
		</textarea>
		<br />
		Price
		<input type="text" name="price">
		<br/>
		Breakfast<input type="checkbox" name="amen"  value="breakfast">
		Dinner<input type="checkbox" name="amen"  value="dinner">
		Spa<input type="checkbox" name="amen"  value="spa">
		<input type="checkbox" name="amen" value="" checked="checked" style="display:none"/>
		<br/>
		<input type="submit" value="Register">
	</form>

</div>

<!-- View all rooms -->
<div id=viewRooms class="collapse">
	<table border="5">
	
	<c:forEach var="room" items="${roomList}">
	
		<tr>			
			<td><c:out value="${room.roomNumber}"></c:out></td>
			<td><c:out value="${room.roomType}"></c:out></td>
			<td><c:out value="${room.bedType}"></c:out></td>
			<td><c:out value="${room.imageTitle}"></c:out></td>
			<td><c:out value="${room.description}"></c:out></td>
			<td><c:out value="${room.price}"></c:out></td>
			<td>
				<c:if test="${room.breakfast ==1}">Breakfast</c:if>
				<c:if test="${room.spa == 1}">Spa</c:if>
				<c:if test="${room.dinner == 1}">Dinner</c:if>								
			</td>
			<td><a href="#demo${room.id}" data-toggle="collapse"><button type="button" >EDIT</button></a> </td>
			<td>
				<form action="deleteRoom" method="POST"/>
					<input type="hidden" name="id" value="${room.id}">
					<input type="submit" value="Delete">
				</form>
			</td>
		</tr>
		
		<!-- Collapsible section for editing a room -->			
		<tr id="demo${room.id}" class="collapse">
				<form action="editRoom" method="POST">
					<input type="hidden" name="id" value="${room.id}">
					
					<td><select name="roomType">
							<option>Room Type</option>
							<option value="Suite">Suite room</option>
							<option value="Single">Single room</option>
							<option value="Double">Double room</option>
					</select></td>
					<td><select name="bedType">
							<option>Bed Type</option>
							<option value="King">King</option>
							<option value="Queen">Queen</option>
							<option value="Double">Double</option>
					</select></td>
					<td><select name="image">
							<option>Image</option>
							<option value="single1.jpg">Single 1</option>
							<option value="single2.jpg">Single 2</option>
							<option value="double1.jpg">Double 1</option>
							<option value="double2.jpg">Double 2</option>
							<option value="suite1.png">Suite 1</option>
							<option value="suite2.jpg">Suite 2</option>
					</select></td>
					<td>Room description <textarea rows="4" cols="50"
							name="description" value="${room.description}"></textarea>
					</td>
					<td>Price <input type="text" name="price"
						value="${room.price}">
					</td>
					<td>Breakfast<input type="checkbox" name="amen"
						value="breakfast"> Dinner<input type="checkbox"
						name="amen" value="dinner"> Spa<input type="checkbox"
						name="amen" value="spa">
					</td>
					<td><input type="submit" value="Edit">
			</form>
			
			<form action="admin" >
				<input type="submit" value="Cancel">
			</form> 
			</td>	
		</tr>
		
		
	</c:forEach> 
	</table>


</div>

</div>
</body>
</html>
