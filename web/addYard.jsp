<%-- 
    Document   : yardManagments
    Created on : Jun 25, 2022, 10:51:22 AM
    Author     : phuth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="style-quantri-quanlisan.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <body>
        <div id="header">
            <div class="user">${sessionScope.LOGIN_USER.fullname}</div>
        </div>
        <div id="body">
            <div class="main_tab">
                <div class="main_tab_container">
                    <div class="user_pic">
                        <img src="img/badmintonk.png">
                    </div>
                    <div class="manager">
                        <ul>
                            <li>
                                <a href="main.jsp">
                                    <i class="fa-solid fa-house"></i>
                                    Trang chủ
                                </a>
                            </li>
                            <li>
                                <a href="quan-tri-quanlisan.html">
                                    <i class="fa-solid fa-briefcase"></i>
                                    Quản lí sân
                                </a>
                            </li>
                            <li>
                                <a href="quantri-hosocanhan.html">
                                    <i class="fa-solid fa-user"></i>
                                    Hồ sơ cá nhân
                                </a>
                            </li>
                            <li>
                                <a href="quantri-sandadat.html">
                                    <i class="fa-solid fa-ticket"></i>
                                    Sân đã đặt
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="main">
                <h2>Thêm sân lớn</h2>
                <form action="MainServlet" class="user_manager" method="POST">
                    <table class="add_yard_manager">
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                        <tr>
                            <td> ID Sân</td>
                            <td><input type="text" class="id" name="yardId" min="0">
                                <p style="color:red">
                                    ${requestScope.YARD_ERROR.getYardIDError()}
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>Tên Sân</td>
                            <td><input type="text" class="name" name="yardName"></td>
                        </tr>
                        <tr>
                            <td>Username chủ Sân</td>
                            <td><input type="text" class="ownername" name="yardOwnerId">
                            </td>
                        </tr>
                        <tr>
                            <td>Địa chỉ</td>
                            <td><input type="text" class="address" name="address"></td>
                        </tr>
                        <tr>
                            <td>Quận</td>
                            <td>
                                <select name="district">
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
                            </td>
                        </tr>
                        <tr>
                            <td>Giá</td>
                            <td class="price">Sáng</td>
                            <td><input type="number" id="price" name="updatePriceday" min="1000"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="price">Chiều - Tối</td>
                            <td><input type="number" id="price" name="updatePricenight" min="1000"></td>
                        </tr>
<!--                                            <tr>
                                                <td>Ảnh</td>
                                                <td><input type="text" class="picture" name="picture"></td>
                                                <td><button type="submit" class="upload_pic" name="uploadPic">Tải ảnh lên</button></td>
                                            </tr>-->
                    </table>
                    <p style="color:red">
                        ${requestScope.YARD_ERROR.getYardMessError()}
                    </p>
                    <input type="submit" name="BTACTION" value="Add"/>
                </form>
            </div>
        </div>
    </body>
</html>
