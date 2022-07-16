<%-- 
    Document   : main.jsp
    Created on : Jun 25, 2022, 10:37:23 AM
    Author     : phuth
--%>

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
                <c:if test="${sessionScope.LOGIN_USER==null}">
                    <a class="login_text" href="login.jsp">Login</a>
                    <a class="register_text" href="register.jsp">Register</a>
                </c:if>
                <c:if test="${sessionScope.LOGIN_USER!=null}">
                    <p class="login_text">${sessionScope.LOGIN_USER.fullname}</P>
                    <a class="register_text" href="LogoutServlet">Logout</a>   
                </c:if>
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
        <div id="search_section">
            <div class="search_container">
                <form class="search_form" action="MainServlet" method="POST">
                    <p>Tên Sân</p>
                    <input type="text" id="date" name="dayChooser">
                    <input type="submit" value="Search" name="BTACTION" class="search_btn">
                    <c:if test="${requestScope.LIST_YARD!=null}" >
                        <c:if test="${not empty requestScope.LIST_YARD}">
                            <table border="1">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Sân</th>
                                        <th>Chủ sân</th>
                                        <th>Địa chỉ</th>
                                        <th>Giá buổi sáng</th>
                                        <th>Giá buổi chiều - tối</th>
                                            <c:if test="${sessionScope.LOGIN_USER.role==1}">
                                            <th>Đặt Sân</th>
                                            </c:if>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="dto" varStatus="counter" items="${requestScope.LIST_YARD}">
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>${dto.yardName}</td>
                                            <td>${dto.userFullName}</td>
                                            <td>${dto.yardAddress}</td>
                                            <td>${dto.yardDayPrice}đ</td>
                                            <td>${dto.yardNightprice}đ</td>
                                            <c:if test="${sessionScope.LOGIN_USER.role==1}">
                                                <td><input type="submit" value="Booking" name="BTACTION" class="search_btn"></td>
                                                </c:if>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                        <c:if test="${empty requestScope.LIST_BOOKED_YARD}">
                            No Record Found!
                        </c:if>
                    </c:if>
                </form>
            </div>
        </div>
</html>
