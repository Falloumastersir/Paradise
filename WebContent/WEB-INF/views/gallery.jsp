<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %> 
<%@ taglib uri= "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>      
<title>The Paradise-Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

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
				<li class="active"><a href="gallery">Photo Gallery</a></li> |
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

<!--start main -->
<div class="main_bg">
<div class="wrap">
	<div class="main">
<!-- start main_content -->
				<ul class="service_list">
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic1.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						<a href="details.html"><h3>Sed condimentum</h3></a>
						<p class="para">There are many variations of passages of Lorem Ipsum available,</p>
						<h4><a  href="details.html">Lorem ipsum</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic2.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						<a href="details.html"><h3>Integer facilisis</h3></a>
						 <p class="para">Our website design and development provides quality web,</p>
						 <h4><a href="details.html">Nulla accumsan</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic3.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.html"><h3>Morbi sit amet mauris</h3></a>
						 <p class="para">There are many variations of passages of Lorem Ipsum available,</p>
						 <h4><a href="details.html">Vestilum feliing</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic4.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						<a href="details.html"><h3>Nulla commodo erat</h3></a>
						 <p class="para">Lorem ipsum dolor sit amet, consectetur elit,EIUSMOD tempor,</p>
						 <h4><a href="details.html">Nulla commodo</a></h4>
					</li>
					<div class="clear"></div>
				</ul>
				<ul class="service_list top">
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic5.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.html"><h3>Nulla commodo erat</h3></a>
						 <p class="para">There are many variations of passages of Lorem Ipsum available,</p>
						<h4><a  href="details.html">Lorem ipsum</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic6.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>						
						 <a href="details.html"><h3>Morbi sit amet mauris</h3></a>
						 <p class="para">Lorem ipsum dolor sit amet, consectetur elit,EIUSMOD tempor,</p>
						 <h4><a href="details.html">Nulla accumsan</a></h4>
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic7.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>	
						 <a href="details.html"><h3>Integer facilisis</h3></a>
						<p class="para">There are many variations of passages of Lorem Ipsum available,</p>
						<h4><a href="details.html">Vestilum feliing</a></h4>
											
					</li>
					<li>
						<div class="ser_img">
							<a href="details.html">
								<img src="resources/images/ser_pic8.jpg" alt="" />
								<span class="next"> </span>
							</a>
						</div>		
						 <a href="details.html"><h3>Sed condimentum</h3></a>
						 <p class="para">Our website design and development provides quality web,</p>
						<h4><a  href="details.html">Lorem ipsum</a></h4>
					</li>
					<div class="clear"></div>
				</ul>
		<div class="clear"></div>
	<!-- end main_content -->

	</div>
</div>
</div>		
<!--start main -->
<div class="footer_bg">
<div class="wrap">
<div class="footer">
			<div class="copy">
				<p class="link"><span>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></span></p>
			</div>
			<div class="f_nav">
				<ul>
					<li><a href="welcome">Home</a></li> |
                <li><a href="aboutUs">About us</a></li>|
				<li><a href="book">Book a Room</a></li> |
				<li class="active"><a href="gallery">Photo Gallery</a></li> |
				<li><a href="contact">Contact Us</a></li>|
				 <li><a href="login">Login/SignUp</a></li>
				</ul>
			</div>
			<div class="soc_icons">
				<ul>
					<li><a class="icon1" href="#"></a></li>
					<li><a class="icon2" href="#"></a></li>
					<li><a class="icon3" href="#"></a></li>
					<li><a class="icon4" href="#"></a></li>
					<li><a class="icon5" href="#"></a></li>
					<div class="clear"></div>
				</ul>	
			</div>
			<div class="clear"></div>
</div>
</div>
</div>		
</body>
</html>