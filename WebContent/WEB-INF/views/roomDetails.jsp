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

  
     <div class="sidebar">
			
			<h4>Filter search</h4>
			<ul class="s_nav">
                            <h7>Price Range</h7>
                            <li><label for="chk1"><a href="#"><input type="radio" name="chk1" id="chk1">$100-$300</a></label></li>
                              <li><label for="chk2"><a href="#"><input type="radio" name="chk2" id="chk2">$100-$500</a></label></li>
                            <li><label for="chk3"><a href="#"><input type="radio" name="chk3" id="chk3">$500-$1000</a></label></li>
                            <li><label for="chk4"><a href="#"><input type="radio" name="chk4" id="chk4">$1000-$2000</a></label></li>
                           
                            <h7>Facilities</h7> 
                             <li><label for="chk5"><a href="#"><input type="radio" name="chk5" id="chk5">Spa tub</a></label></li>
                            <li><label for="chk7"><a href="#"><input type="radio" name="chk7" id="chk7">Breakfast</a></label></li>
		            <li><label for="chk8"><a href="#"><input type="radio" name="chk8" id="chk8">Dinner</a></label></li>
				
                              
                               <h7>Bed-Type</h7>
                                <li><label for="chk9"><a href="#"><input type="radio" name="chk9" id="chk9">1 King</a></label></li>
				 <li><label for="chk10"><a href="#"><input type="radio" name="chk10" id="chk10">1 Queen</a></label></li>
                                  <li><label for="chk11"><a href="#"><input type="radio" name="chk11" id="chk11">2 Queens</a></label></li>
                                  <li><label for="chk12"><a href="#"><input type="radio" name="chk12" id="chk12">Family Room</a></label></li>
				
			</ul>
                         <div class="date_btn">
				<form>
					<input type="submit" value="Go" style="width: 62px;">
				</form>
			</div>
			
		</div>
    
     <div id="content">
        <p> Room name </p><br />
        <br />
        <p> Price </p> <br />
        <br />
        <p> Available dates </p><br />
        <br />
        <br />
       <div class="date_btn2">
				<form action="confirm">
					<input type="submit" value="Confirm" size="50px" >
				</form>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
	
        
    </div>

     </div>
     
    
    <div id="sliderFrame" >
        <div id="slider">
            
            <img src="resources/images/i1.jpg" alt="" />
            <img src="resources/images/i2.jpg"  alt="" />
            <img src="resources/images/i3.jpg" alt="" />
            <img src="resources/images/i4.jpg" alt="" />
            <img src="resources/images/i5.jpg" />
            
        </div>
        
     </div>
     
      
   
        	 <div id="details">
            
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                          .</p>
        </div>	

</html>
