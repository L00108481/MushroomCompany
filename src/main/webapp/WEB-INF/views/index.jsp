<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
    
	<title>Mushroom Company</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/menustyles.css" />" rel="stylesheet">

	</head>
	
    <body>
		<div id="wrapper">
            <div id="logo">
            <img src="<c:url value="/resources/images/logo.JPG"/>">
            </div>
            
            <div id="social-media">

                <ul>
                    <li><a href="http://www.facebook.com"><img src="<c:url value="/resources/images/icons/facebook.png"/>"></a></li>
                    <li><a href="http://www.twitter.com"><img src="<c:url value="/resources/images/icons/twitter.png"/>"></a></li>
                    <li><a href="http://www.instagram.com"><img src="<c:url value="/resources/images/icons/insta.png"/>"></a></li>
                    <li><a href="http://www.youtube.com"><img src="<c:url value="/resources/images/icons/youtube.png"/>"></a></li>
                </ul>
                <p>Why not check out our social<br>medias above</p>

            </div>
            
            <div id="topnav">
                <ul>
                   <li><a href='#'>Home</a></li>
                   <li><a href='#'>Products</a></li>
                   <li><a href='#'>Contact</a></li>
                   <li><a href='#'>About</a></li>
                   <li style="float:right"><a href='#'>Sign-In</a></li>
                </ul>
            </div> 

            <div id="content-wrapper">
            	<div id ="content">				
					<h1>Welcome </h1>
	                <p>This is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text, this is sample text,this is sample text, this is sample text, this is sample textThis is sample text, this is sample text.</p>
					<h2>What we provide</h2>
	                <p>This is sample text, this is sample text, this is sample text, this is sample text</p>
	                
	                <div id="box1">
	                	<img src="<c:url value="/resources/images/box1.jpg"/>">
	                    <h2>Mushrooms</h2>
	                    <p>This is sample text, this is sample text, this is sample text, this is sample textThis is sample text, this is sample text.</p>
	                </div>
	                
	                <div id="box2">
	                    <img src="<c:url value="/resources/images/box2.png"/>">
	                    <h2>Truffles</h2>
	                    <p>This is sample text, this is sample text, this is sample text, this is sample textThis is sample text, this is sample text.</p>
	                </div>
                </div>
                
				<div id ="right-side">
					<h2>Why choose us?</h2>
	                <ul>
	                	<li>Professional service</li>
	                    <li>Fast delivery</li>
	                    <li>Competitive prices</li>
	                    <li>V.A.T registered. Tax compliant</li>
	                    <li>Friendly staff</li>
	                </ul>
	                <br>
					<h3>Check out our location below</h3>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2291.280075589289!2d-7.739189584363695!3d54.95064778034645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x485f94ccc1511609%3A0x94ae4d838a4b6d17!2sMain+Street!5e0!3m2!1sen!2sie!4v1502550701292" width="300" height="225" frameborder="0" style="border:0" allowfullscreen></iframe>            </div>
            	</div>
            <div id="footer">
                <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; DevOps Mushroom Design Company &bull; 123 Main Street Letterkenny </p>
            </div>
        </div>	
    </body>

</html>