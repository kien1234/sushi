<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header">
            <div class="title">The Sushi Restaurant</div>
            <div class="subtitle">Welcome to my website</div>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a class="${status==1?"text":""}" href="HomeControl">Home</a></li>
                <li><a class="${status==2?"text":""}" href="MenuControl">Menu and price list</a></li>
                <li><a class="${status==3?"text":""}" href="InformationControl">Find Us</a></li>
            </ul>
        </div>
    </body>
</html>
