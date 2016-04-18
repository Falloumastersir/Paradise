<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %> 
<%@ taglib uri= "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html>

<title>Change Booking Details </title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- add spring:url -->
<spring:url value="/resources/css/style.css" var="styleCSS" />
<spring:url value="/resources/css/fwslider.css" var="sliderCSS" />
<spring:url value="/resources/css/jquery-ui.css" var="jqueryCSS" />
<spring:url value="/resources/css/JFGrid.css" var="JFGridCSS" />
<spring:url value="/resources/css/JFFormStyle-1.css" var="JFFormCSS" />
<spring:url value="/resources/css/jquery-ui.css" var="jqueryUiCSS" />


<spring:url value="/resources/js/jquery.min.js" var="JQuerymin" />
<spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" var="googleApi" /> 
<spring:url value="/resources/js/jquery-ui.min.js" var="JQueryuimin" />
<spring:url value="/resources/js/css3-mediaqueries.js" var="mediaqueries" />
<spring:url value="/resources/js/fwslider.js" var="fwslider" />
<spring:url value="/resources/js/JFCore.js" var="JFCore" />
<spring:url value="/resources/js/JFForms.js" var="JFForm" />
<spring:url value="/resources/js/jquery-ui.js" var="jqueryui" />
<spring:url value="/resources/js/script.js" var="script" />
<spring:url value="/resources/js/LoginValidaiton.js" var="validation" />

<!-- end spring:url -->

<link href="${sliderCSS}" rel="stylesheet" media="all" />
<link href="${styleCSS}" rel="stylesheet" type="text/css" media="all" />
<link href="${jqueryCSS}" rel="stylesheet" />
<link href="${JFGridCSS}" rel="stylesheet" type="text/css" />
<link href="${JFFormCSS}" rel="stylesheet" type="text/css" />
<link href="${jqueryUiCss}" rel="stylesheet" type="text/css" />
<link href="${jqueryuiCss}" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>


<script src="${JQuerymin}"></script>
<script src="${JQueryuimin}"></script>
<script src="${mediaqueries}"></script>
<script src="${fwslider}"></script>
<script src="${JFcore}"></script>
<script src="${JFForm}"></script>
<script src="${jqueryui}"></script>
<script src="${script}"></script>
<script src="${validation}"></script>

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
                <li><a href="index.html">About Us</a></li> |
				<li><a href="gallery">Gallery</a></li> |
			    <li><a href="contact">Contact Us</a></li>
			    <li> <img src="resources/images/user.png" height="15px" width="15px"/><a href="account">Hi ${name}</a></li>
				<div class="clear"></div>
			</ul>
			<!-- start profile_details -->
					
		</div>
        </div>
</div>

    <div class="clear"></div>
</div>
      
<div id="changeBookingMain">
	<h4>New Search</h4>			
				<form action="searchToChange" method="GET">
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
</div>

<div id="searchResult">
		<c:if test="${empty searchResult}">
			<h5>Sorry, no result found</h5>
			<p>Try new search</p>
		</c:if>

		<c:if test="${not empty searchResult}">
			<c:forEach var="room" items="${searchResult}">
				<div class="displayRoom">
					<div class="roomImage">
						<a href="#"> <img src="resources/images/${room.imageTitle}"
							alt="" width="300" , height="250" />
						</a>
					</div>
					<h4>${room.roomType}
						<span>$${room.price}</span>
					</h4>
					<p>${room.description}</p>

					<div>
						<form action="confirmChange">
							<input type="hidden" name="roomID" value="${room.id}">
							<input type="hidden" name="roomNumber" value="${room.roomNumber}">
							<input type="submit" name="room" value="Change to this room" style="width: 62px;">
						</form>
					</div>
				</div>
			</c:forEach>
		</c:if>	


</div>

</html>