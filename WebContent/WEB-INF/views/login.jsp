<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %> 
<%@ taglib uri= "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html>

<title>Welcome to Paradise Hotel </title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- For error messages -->
<fmt:setBundle basename="messages" />
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />

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
                <li><a href="book">Book a Room</a></li> |
				<li><a href="gallery">Photo Gallery</a></li> |
				<li><a href="activities.html">Map</a></li> |
                <li><a href="contact">Contact Us</a></li>
			    <li class="active"><a href="login">Login/SignUp</a></li> |
				<div class="clear"></div>
			</ul>
			<!-- start profile_details -->
					
		</div>
        </div>
</div>

    <div class="clear"></div>
</div>
   
<div id="loginMain">
      <img src="resources/images/hotel9.jpg" alt=""/>
       <div class="wrapper">
	<div class="container">
	 
		<h3>Please Login to Book the Room</h3>
		
		<form:form  name="f" class="form" action="loginToConfirm" method="POST" >
	
		
            <input type="text" placeholder="Name" name="name">
            <c:out value="${userNameError}"></c:out>
			<input type="text" placeholder="Username" name="username">
			<input type="password" placeholder="Password" name="password">
                       
            <button type="submit" id="login-button" >Login</button>
                 
		</form:form>
		
		<form:form action="cancel">
                  <button type="submit" id="login-button" >Cancel</button>
         </form:form> 
                                  
                        
   
		<span class="login-box-options">
New User?  <a href="registerPage" style="margin-left:30px;">Register Here</a>
</span>
	</div>
	
</div>
</div>

</html>