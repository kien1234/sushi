<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/information.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                
                <div class="left">
                    <div class="location_title">
                        Find us
                    </div>
                        <div class="location">
                            <div class="location_left">
                                <div class="location_header">
                                    Address and contact:
                                    
                                </div>
                                    <p>${infor.address}</p>
                                    <p>tel: ${infor.tel}</p>
                                    <p>Email: ${infor.email}</p>
                            </div>
                             <div class="location_right">
                                <div class="location_header">
                                    Opening hours:
                                </div>
                                ${infor.openingHours}
                            </div>
                       
                    </div>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d283696.78626557876!2d105.683304907564!3d20.892439247183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31344e20a460eb7b%3A0xf92dde0b27d944ba!2zUGjDuiBOZ2jEqWEsIENoxrDGoW5nIE3hu7ksIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1583816325908!5m2!1svi!2s" width="700" height="500" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
                            
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>