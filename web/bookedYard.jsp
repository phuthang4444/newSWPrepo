<%-- 
    Document   : bookedYard
    Created on : Jul 11, 2022, 9:32:24 PM
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
        <title>Trang chu</title>
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
                    <a href="main.jsp">Trang chủ</a>
                </li>
                <li>
                    <a href="#main_yard_section">Sân lớn</a>
                </li>
                <li>
                    <a href="#small_yard_section">Sân con</a>
                </li>
                <li>
                    <a href="#small_yard_section_2">Sân trống</a>
                </li>
            </ul>
        </div>
        <div id="search_section">
            <div class="search_container">
                <form class="search_form" action="MainServlet" method="POST">
                    <p>Địa điểm</p>
                    <select name="searchLocation" id="location" >
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
                    <!--                <p>Ngày đặt</p>
                                        <input type="date" id="date" name="dayChooser" >-->
                    <input type="submit" value="Search" name="BTACTION" class="search_btn">
                    <c:if test="${requestScope.LIST_BOOKED_YARD!=null}" >
                        <c:if test="${not empty requestScope.LIST_BOOKED_YARD}">
                            <table border="1">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Sân</th>
                                        <th>Người đặt</th>
                                        <th>Giờ</th>
                                        <th>Ngày đặt</th>
                                        <th>Giá</th>
                                        <th>Sân con</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="dto" varStatus="counter" items="${requestScope.LIST_BOOKED_YARD}">
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>${dto.yardName}</td>
                                        <td>${dto.userFullName}</td>
                                        <td>${dto.yardFromTime}h - ${dto.yardToTime}h</td>
                                        <td>${dto.yardBookedDate}</td>
                                        <td>${dto.yardPrice}đ</td>
                                        <td>${dto.miniYardName}</td>
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
        <!--    <div id="sm_yard_view">
                <div class="sm_yard">
                    <div class="sm_yard_img">
                        <img src="img/yard2.jpg" alt="">
                    </div>
                    <div class="sm_yard_info">
                        <h2>Sân NVT1 - Sân 1</h2>
                        <p>Địa chỉ: 123 Nguyẽn Văn Tăng, Quận 9, TP HCM</p>
                        <p>Sáng 120.000đ/h / chiều - Tối 150.000đ/h</p>
                        <p>Sân có áp dụng <span class="discount_text">giảm giá 15%</span></p>
                        <div class="small_yard_time">
                            <form action="Main ">
                                <table class="small_yard_morning view_time">
                                    <tr>
                                        <th>STT</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Sáng</td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">5H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">6H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">7H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">8H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">9H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">10H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">11H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">12H</button></td>
        
                                    </tr>
                                </table>
                                <table class="small_yard_afternoon view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Chiều</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">13H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">14H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">15H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">16H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">17H</button></td>
                                    </tr>
                                </table>
                                <table class="small_yard_night view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Tối</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">18H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">19H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">20H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">21H</button></td>
                                    </tr>
                                </table>
                                <button type="submit" class="booking_btn" name="bookingBtn">Đặt sân</button>
                            </form>
                        </div>
        
        
                    </div>
                </div>
            </div>
            <div id="sm_yard_view">
                <div class="sm_yard">
                    <div class="sm_yard_img">
                        <img src="img/yard2.jpg" alt="">
                    </div>
                    <div class="sm_yard_info">
                        <h2>Sân NVT1 - Sân 1</h2>
                        <p>Địa chỉ: 123 Nguyẽn Văn Tăng, Quận 9, TP HCM</p>
                        <p>Sáng 120.000đ/h / chiều - Tối 150.000đ/h</p>
                        <p>Sân có áp dụng <span class="discount_text">Giảm giá 15%</span></p>
                        <div class="small_yard_time">
                            <form action="">
                                <table class="small_yard_morning view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Sáng</td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">5H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">6H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">7H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">8H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">9H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">10H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">11H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">12H</button></td>
        
                                    </tr>
                                </table>
                                <table class="small_yard_afternoon view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Chiều</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">13H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">14H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">15H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">16H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">17H</button></td>
                                    </tr>
                                </table>
                                <table class="small_yard_night view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Tối</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">18H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">19H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">20H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">21H</button></td>
                                    </tr>
                                </table>
                                <button type="submit" class="booking_btn" name="bookingBtn">Đặt sân</button>
                            </form>
                        </div>
        
        
                    </div>
                </div>
            </div>
            <div id="sm_yard_view">
                <div class="sm_yard">
                    <div class="sm_yard_img">
                        <img src="img/yard2.jpg" alt="">
                    </div>
                    <div class="sm_yard_info">
                        <h2>Sân NVT1 - Sân 1</h2>
                        <p>Địa chỉ: 123 Nguyẽn Văn Tăng, Quận 9, TP HCM</p>
                        <p>Sáng 120.000đ/h / chiều - Tối 150.000đ/h</p>
                        <p>Sân có áp dụng <span class="discount_text">Giảm giá 15%</span></p>
                        <div class="small_yard_time">
                            <form action="">
                                <table class="small_yard_morning view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Sáng</td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">5H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">6H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">7H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">8H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">9H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">10H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">11H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">12H</button></td>
        
                                    </tr>
                                </table>
                                <table class="small_yard_afternoon view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Chiều</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">13H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">14H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">15H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">16H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">17H</button></td>
                                    </tr>
                                </table>
                                <table class="small_yard_night view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Tối</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">18H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">19H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">20H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">21H</button></td>
                                    </tr>
                                </table>
                                <button type="submit" class="booking_btn" name="bookingBtn">Đặt sân</button>
                            </form>
                        </div>
        
        
                    </div>
                </div>
            </div>
            <div id="sm_yard_view">
                <div class="sm_yard">
                    <div class="sm_yard_img">
                        <img src="img/yard2.jpg" alt="">
                    </div>
                    <div class="sm_yard_info">
                        <h2>Sân NVT1 - Sân 1</h2>
                        <p>Địa chỉ: 123 Nguyẽn Văn Tăng, Quận 9, TP HCM</p>
                        <p>Sáng 120.000đ/h / chiều - Tối 150.000đ/h</p>
                        <p>Sân có áp dụng <span class="discount_text">Giảm giá 15%</span></p>
                        <div class="small_yard_time">
                            <form action="">
                                <table class="small_yard_morning view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Sáng</td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">5H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">6H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">7H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">8H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">9H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">10H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">11H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">12H</button></td>
        
                                    </tr>
                                </table>
                                <table class="small_yard_afternoon view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Chiều</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">13H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">14H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">15H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">16H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">17H</button></td>
                                    </tr>
                                </table>
                                <table class="small_yard_night view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Tối</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">18H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">19H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">20H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">21H</button></td>
                                    </tr>
                                </table>
                                <button type="submit" class="booking_btn" name="bookingBtn">Đặt sân</button>
                            </form>
                        </div>
        
        
                    </div>
                </div>
            </div>
            <div id="sm_yard_view">
                <div class="sm_yard">
                    <div class="sm_yard_img">
                        <img src="img/yard2.jpg" alt="">
                    </div>
                    <div class="sm_yard_info">
                        <h2>Sân NVT1 - Sân 1</h2>
                        <p>Địa chỉ: 123 Nguyẽn Văn Tăng, Quận 9, TP HCM</p>
                        <p>Sáng 120.000đ/h / chiều - Tối 150.000đ/h</p>
                        <p>Sân có áp dụng <span class="discount_text">Giảm giá 15%</span></p>
                        <div class="small_yard_time">
                            <form action="">
                                <table class="small_yard_morning view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Sáng</td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">5H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">6H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">7H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">8H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">9H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">10H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">11H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">12H</button></td>
        
                                    </tr>
                                </table>
                                <table class="small_yard_afternoon view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Chiều</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">13H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered discount">14H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">15H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">16H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">17H</button></td>
                                    </tr>
                                </table>
                                <table class="small_yard_night view_time">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Tối</td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">18H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time odered">19H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free">20H</button></td>
                                        <td><button id="5h" value="5h" name="5h" class="time free discount">21H</button></td>
                                    </tr>
                                </table>
                                <button type="submit" class="booking_btn" name="bookingBtn">Đặt sân</button>
                            </form>
                        </div>
        
        
                    </div>
                </div>
            </div>-->
        <div id="footer">

        </div>
    </body>
</html>
