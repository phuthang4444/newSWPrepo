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
                        <a href="client-sannho.html">Sân đã đặt</a>
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
                    <p>Địa điểm</p>
                    <select name="searchLocation" id="location">
                        <option value="1">Quận 1</option>
                        <option value="2">Quận 2</option>
                        <option value="3">Quận 3</option>
                        <option value="4">Quận 4</option>
                        <option value="5">Quận 5</option>
                        <option value="6">Quận 6</option>
                        <option value="7">Quận 7</option>
                        <option value="8">Quận 8</option>
                        <option value="9">Quận 9</option>
                        <option value="10">Quận 10</option>
                        <option value="11">Quận 11</option>
                        <option value="12">Quận 12</option>
                        <option value="13">Quận Bình Thạnh</option>
                        <option value="14">Thành phố Thủ Đức</option>
                        <option value="15">Quận Bình Tân</option>
                        <option value="16">Quận Tân Bình</option>
                        <option value="17">Quận Tân Phú</option>
                        <option value="18">Quận Phú Nhuận</option>
                        <option value="19">Quận Gò Vấp</option>
                        <option value="20">Huyện Cần Giờ</option>
                        <option value="21">Huyện Củ Chi</option>
                        <option value="22">Huyện Nhà Bè</option>
                        <option value="23">Huyện Hóc Môn</option>
                        <option value="24">Huyện Bình Chánh</option>
                    </select>
                    <p>Ngày đặt</p>
                    <input type="date" id="date" name="dayChooser">
                    <input type="submit" value="Tìm kiếm" class="search_btn">
                </form>
            </div>
        </div>
</html>
