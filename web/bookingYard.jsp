<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Main Page</title>
    </head>

    <body>

        <div id="header">
            <div class="logo">
                <img src="img/badmintonk.png" alt="logo">
            </div>
            <div class="author">
                <p class="login_text">${sessionScope.LOGIN_USER.fullname}</P>
                <a class="register_text" href="LogoutServlet">Logout</a>   
            </div>
        </div>
        <div id="nav_bar">
            <ul>
                <li>
                    <a href="#">Trang chủ</a>
                </li>
                <li>
                    <a href="#main_yard_section">Sân lớn</a>
                </li>

                <li>
                    <a href="#small_yard_section">Sân con</a>
                </li>
                <c:if test="${sessionScope.LOGIN_USER.role==1}">
                    <li>
                        <a href="#small_yard_section_2">Sân trống</a>
                    </li>

                    <li>
                        <a href="client-sannho.html">Sân đã đặt</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.LOGIN_USER.role==2}">
                    <li>
                        <a href="#small_yard_section_2">Sân trống</a>
                    </li>

                    <li>
                        <a href="bookedYard.jsp">Sân đã đặt</a>
                    </li>
                    <li>
                        <a href="addYard.jsp">Thêm sân</a>
                    </li>
                </c:if>
            </ul>
        </div>