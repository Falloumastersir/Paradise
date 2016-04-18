<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %> 
<%@ taglib uri= "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page session="true"%>
 <%@page import="com.paradise.hotel.entity.User"%>
  <%@page import="com.paradise.hotel.services.LoginServiceImpl"%>

<!DOCTYPE html>

<html>

<title>Welcome to Paradise Hotel </title>

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
                <li><a href="aboutUs">About Us</a></li> |
				<li><a href="gallery">Gallery</a></li> |
				
                <li><a href="contact">Contact Us</a></li>			    
			    <c:if test="${empty username}">
				<li><a href="loginPage">Login/SignUp</a></li>
				</c:if>				
				<c:if test="${not empty username}">
				<li> <img src="resources/images/user.png" height="15px" width="15px"/><a href="account">Hi ${username}</a></li>
				</c:if>	
				<div class="clear"></div>
			</ul>
			<!-- start profile_details -->
					
		</div>
        </div>
</div>

    <div class="clear"></div>
</div>
<div id="loginMain">
     <img src="resources/images/confirm.jpg" alt=""/>
       <div class="wrapper">
	<div class="container">
         <h1>Confirmation page</h1>
             <b>Thank you!</b><br/>
             <c:out value="${username}"></c:out>
             <br/>
             <b>Here are your Confirmation details: </b>
             <Label>Check In Date</Label>
             <c:out value="${newBooking.checkIn}"></c:out>
             <Label>Check Out Date</Label>
             <c:out value="${newBooking.checkOut}"></c:out>
             <Label>Number of Guest</Label>
             <c:out value="${newBooking.guestNum}"></c:out>
             <Label>Room Number</Label>
             <c:out value="${newBooking.roomNumber}"></c:out>
             <br />
            
             To go back to our Home page  <a href="welcome">Click Here</a>
         </div>

</div>
</div>

</html>
