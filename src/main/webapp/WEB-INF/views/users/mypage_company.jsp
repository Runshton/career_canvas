<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@include
        file="../header_footer/header.jspf" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Career Canvas</title>
    <script
            src="https://kit.fontawesome.com/2026ef433b.js"
            crossorigin="anonymous"
    ></script>
    <link
            href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
            integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    ></script>

    <style>
        /* All */
        .container {
            margin: 0 auto;
            border-left: 1px solid #73351F;
            border-right: 1px solid #73351F;

        }
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }

        ul,
        li {
            padding: 0;
            margin: 0;
        }

        .container {
            width: 1200px;
            margin: 0 auto;
        }

        a:link,
        a:visited {
            color: black;
            text-decoration: none;
        }

        .buttonGroup {
            text-align: center;
        }

        /* Header*/

        /* Title & Logo */

        .title {
            display: flex;
            align-items: center;
        }

        .hamberger {
            display: none;
            font-size: 1.7rem;
        }

        .logo {
            height: 60px;
            line-height: 60px;
            font-size: 1.7rem;
            margin: 0;
        }

        .login {
            position: absolute;
        }

        /* NavBar */

        .nav_wrapper {
            display: flex;
            justify-content: space-between;
        }

        .navBar,
        .infoGroup {
            display: flex;
            justify-content: center;
            padding: 0;
            margin: 0;
            line-height: 50px;
        }

        .nav_wrapper li {
            padding-right: 20px;
        }

        .userInfo {
            display: none;
            position: absolute;
            background: rgba(255, 255, 255, 0.849);
            z-index: 1;
        }

        .userInfo li {
            height: 30px;
            line-height: 30px;
        }

        .userInfo.active {
            display: block;
            margin: 0;
            padding: 0;
        }

        .infoGroup img {
            width: 35px;
            height: 35px;
        }

        .carousel {
            z-index: 0;
        }

        .firstHr {
            left: 0;
            width: 100%;
        }

        /* Main */

        /* Mypage User Info */
        .userInfo_wrapper {
            width: 100%;
            margin: 0 auto;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            background: #f2f2f2;
            padding: 20px;
            border-radius: 30px;
            border: 1px solid #73351F;
        }

        .userIntro {
            display: flex;
            align-items: center;
            padding-bottom: 50px;
        }

        .userId {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2.5px solid #73351F;
            padding-bottom: 5px;
            margin-bottom: 20px;
        }

        .userIntro img {
            width: 150px;
            height: 150px;
            border-radius: 30%;
        }
        .btn-outline-primary {
            font-size: 14px;
            padding: 2px 4px;
        }
        .btn-outline-secondary {
            font-size: 14px;
            padding: 2px 4px;
        }

        .userIntro p {
            margin: 0px;
        }

        .dropdown {
            display: block;
            margin: 0;
            padding: 0;
        }

        .picture {
            background: rgb(86, 70, 235);
            border-radius: 10px;
            padding: 5px;
            color: rgb(255, 255, 255);
            font-size: 14px;
        }

        .etc {
            background: rgb(0, 183, 255);
            border-radius: 10px;
            padding: 5px;
            color: white;
            font-size: 14px;
        }

        /* Center ajax */
        .homeworkImg {
            width: 220px;
            height: 170px;
            padding-right: 50px;
        }

        .ajaxMenu {
            display: flex;
            margin: 0 auto;
            align-items: center;
            justify-content: space-around;
            width: 1300px;
            background-color: white;
            height: 50px;
            line-height: 50px;
            border-radius: 10px;
            text-align: center;
            border: 1px solid #73351F;
        }

        .ajaxMenu a{
            width: 20%;
            color: #0D0D0D;
            transition: color 0.3s, background-color 0.3s;
        }
        .ajaxMenu a:hover {
            color: #73351F;
            font-weight : bold;
        }

        .ajaxView {
            float: left;
        }
        .ajaxContent img {
            width: 170px;
            height: 170px;
        }

        .ajaxView_wrapper {
            width: 70%;
            display: grid;
            grid-template-columns: repeat(4,1fr);
            column-gap: 20px;
            row-gap: 10px;
            margin: 0 auto;
            margin-top: 50px;
        }

        .userInterest span {
            margin-right: 5px;
        }
        .img_C{
            width:235px;
            margin-left: 30px;
        }
        .content_category, .content_title{
            display: inline;
            height: 40px;
            line-height: 40px;
        }
        .content_category{
            height: 30px;
            margin-top: 10px;
            margin-right: 10px;
            background-color: #ddd;
            border-radius: 5px;
            text-align: center;
            padding: 5px 5px 5px 10px;
        }

        .content img {
            width: 235px;
            height: 235px;
            border-radius: 30px;

        }

        .profile_img>img {
            width: 160px;
            height: 160px;
            border-radius: 40px;
        }
        .container_bottom{
            display: flex;
            background: #A69668;
            height: 10px;
            margin-top: 10px;
        }
        .hr-styleset{
            border: 0;
            border-top: 2.5px dashed #73351F ;
            border-bottom: 1px dashed #D9D9D9;
        }
        .container-head{
            display: flex;
            justify-content: center;
            align-items: center;
            background: #A69668;
            height: 10px;
        }
        hr{
            border-top: 2.5px solid #73351F ;
        }
    </style>
</head>
<body>
<!-- Main -->

<!-- Mypage User Info -->
<main  class="container" style="margin-top: 100px; border-top: 3px solid #73351F; padding: 0px; background: linear-gradient( to bottom, #D9C8A9 70%, #F2F2F2 );">
    <div class="container-head"></div>
    <div style="padding: 20px">
    <!-- Top  -->
        <div class="userInfo_wrapper">
            <!-- UserInfo Area -->
            <div class="userIntro">
                <img src="${pageContext.servletContext.contextPath}/upload${uVO.profileimg}" alt=""/>
                <div style="padding-left: 20px;">
                    <div class="userId">
                        <a href="${pageContext.servletContext.contextPath}/mypage/myPofol">
                            <span style="font-size: 1.5rem">${uVO.username }</span>
                        </a>
                        <a href="${pageContext.servletContext.contextPath}/mypage_edit">
                            <input
                                    type="button"
                                    class="btn btn-outline-secondary"
                                    value="수정"
                            />
                        </a>
                    </div>
                    <p>${uVO.comment }</p>
                </div>
            </div>
        <!-- Interest -->
            <div style="padding: 20px 10px 0px 30px; border-left: 2px solid #73351F">
                <p style="display: flex; justify-content: center; font-size: 1.5rem" >관심분야</p>
                <div class="userInterest" style="display: flex; flex-wrap: wrap">
                    <c:if test="${not empty interest}">
                        <c:forEach var="interest" items="${interest}">
                            <span><input class="btn btn-outline-primary" type="button" value="${interest}"></span>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
    <!-- Center -->
    <!-- ajax -->
    <div class="ajaxMenu_wrapper">
        <ul class="ajaxMenu">
            <li class="myPofol menu" id="myPofol menu">
                <a href="${pageContext.servletContext.contextPath}/mypage/biz"
                >나의과제</a
                >
            </li>
            <li class="submitTask menu" id="submitTask">
                <a
                        href="${pageContext.servletContext.contextPath}/mypage/biz"
                >받은과제물</a
                >
            </li>
            <li class="myPost menu" id="myPost menu">
                <a href="${pageContext.servletContext.contextPath}/mypage/biz"
                >쪽지함</a
                >
            </li>
        </ul>
    </div>
    <div class="container"  style="padding: 0px; border-bottom: 3px solid #73351F; background: #F2F2F2">
    <div style="padding: 20px 40px 40px 40px">
    <!-- ajax View -->
        <div style="margin: 0 auto; margin-top: 30px; ">
            <ul style="width: 1100px; display: flex; flex-wrap: wrap; margin: 0 auto" class="content">
            <c:forEach var="list" items="${list}">
                <a href="${pageContext.servletContext.contextPath}/pofolview?pofolid=${list.portfolioid}">
                <div class="img_C">
                    <img src="${pageContext.servletContext.contextPath}/upload${list.imgsrc}" class="portfolio_img">
                    <!-- line 1 -->
                    <div class="content_info">
                        <div class="content_category">
                            <c:if test="${list.category==0}">
                                분류없음
                            </c:if>
                            <c:if test="${list.category==1}">
                                IT/개발
                            </c:if>
                            <c:if test="${list.category==2}">
                                디자인
                            </c:if>
                            <c:if test="${list.category==3}">
                                영상
                            </c:if>
                        </div>
                        <div class="content_title">
                                ${list.portfoliotitle}
                        </div>
                    </div>
                </div>
                </a>
            </c:forEach>
            </ul>
        </div>

        <!-- ajax View -->
        <div style="margin: 0 auto; margin-top: 30px; ">
            <ul style="width: 1100px; display: flex; flex-wrap: wrap; margin: 0 auto" class="content">
            <c:forEach var="list" items="${uVO}">
                <a href="${pageContext.servletContext.contextPath}/pofolview?pofolid=${uVO.portfolioid}">
                <div class="img_C">
                    <img src="${pageContext.servletContext.contextPath}/upload${list.imgsrc}" class="portfolio_img">
                    <!-- line 1 -->
                    <div class="content_info">
                        <div class="content_category">
                            <c:if test="${list.category==0}">
                                분류없음
                            </c:if>
                            <c:if test="${list.category==1}">
                                IT/개발
                            </c:if>
                            <c:if test="${list.category==2}">
                                디자인
                            </c:if>
                            <c:if test="${list.category==3}">
                                영상
                            </c:if>
                        </div>
                        <div class="content_title">
                                ${list.portfoliotitle}
                        </div>
                    </div>
                </div>
                </a>
            </c:forEach>
            </ul>
        </div>
        

            </div>
        <div class="container_bottom"></div>
    </div>
</body>
</html>
<%@include file="../header_footer/footer.jspf" %>