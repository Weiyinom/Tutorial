<%-- 
    Document   : Header
    Created on : Mar 7, 2021, 11:07:23 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="topnav" id="myTopnav">
    <div class="topnav-centered">
        <a href="#home" class="active">Dtruyen</a>
    </div>
    <a href="#news">Home</a>
    
    <div class="topnav-right">
        <ul class="navbar-nav m-auto">
            <c:if test="${sessionScope.account.isAdmin==1}">
                <li class="nav-item">
                    <a class="nav-link" href="home">${sessionScope.account.accName}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Account.jsp">Quản lý tài khoản</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerLogout">Logout</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.account.isCon==1}">
                <li class="nav-item">
                    <a class="nav-link" href="EditAccount.jsp">${sessionScope.account.accName}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Account.jsp">Quản lý truyện</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerLogout">Logout</a>
                </li>
            </c:if>



            <c:if test="${sessionScope.account!=null}">
                <li class="nav-item">
                    <a class="nav-link" href="EditAccount.jsp">${sessionScope.account.accName}</a>
                </li>
              
                <li class="nav-item">
                    <a class="nav-link" href="ControllerLogout">Logout</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.account==null}">
                <li class="nav-item">
                    <a class="topnav-right" href="./Login"><i class="fa fa-fw fa-user"></i>Login</a>
                </li>
            </c:if>
        </ul>
    </div>


    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a> 


</div>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>