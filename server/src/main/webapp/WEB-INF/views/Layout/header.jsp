
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
  <sec:authentication property="principal" var ="principal"/>
</sec:authorize>
<!DOCTYPE html>
<head>
  <title>FSFE Entertainment</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="https://www.w3schools.com/lib/w3.js"></script>
  <style>
    .w3-lobster {
      font-family: "Lobster", serif;
    }

    :root {
      --main-color: hotpink;
      --pane-padding: 5px 42px;
    }
    .mySlides {display: none}
  </style>
</head>
<body>
<div class="w3-top w3-lobster">
  <div class="w3-bar w3-white w3-card-4">
    <a href="/" class="w3-bar-item w3-button w3-pading-large">FSFE</a>
    <a href="/" class="w3-bar-item w3-button w3-pading-large" >HOME</a>
    <a href="#" class="w3-bar-item w3-button w3-pading-large" >ABOUT</a>
    <a href="/artist/list" class="w3-bar-item w3-button w3-pading-large" >ARTIST</a>
    <a href="/item/list" class="w3-bar-item w3-button w3-pading-large" >GOODS</a>
    <a href="/post/list" class="w3-bar-item w3-button w3-pading-large" >EVENT</a>
    <c:choose>
    <c:when test="${empty principal}">
      <a href="/auth/loginForm" class="w3-bar-item w3-button w3-pading-large" style="float:right;">
        <span class="material-icons">login</span>
      </a>
      <a  href="/auth/joinForm" class="w3-bar-item w3-button w3-pading-large" style="float:right;">Sign up</a>
    </c:when>
    <c:otherwise>
      <a href="/logout" class="w3-bar-item w3-button w3-pading-large" style="float:right;">log out</a>
      <a href="/user/updateForm" class="w3-bar-item w3-button w3-pading-large" style="float:right;">
          ${principal.user.username}'s Info
            <c:choose>
              <c:when test="${principal.user.imageUrl != null}">
                <img src="${principal.user.imageUrl}" width="30" height="30" style="border-radius: 50%;">
              </c:when>
              <c:otherwise>
                <span class="material-icons">account_circle</span>
              </c:otherwise>
            </c:choose>


      </a>
      <a href="/basket/myBasket" class="w3-bar-item w3-button w3-pading-large" style="float:right;"><span class="material-icons">shopping_cart</span></a>
      <a href="/buy/myBuyList" class="w3-bar-item w3-button w3-pading-large" style="float:right;">
        <span class="material-icons">shopping_bag</span>
      </a>
      <sec:authorize access="principal.User.roleType.getCode() == 'ROLE_ADMIN'">
        <a href="/admin/manage" class="w3-bar-item w3-button w3-pading-large" style="float:right;">
          <span class="material-icons">build</span>
        </a>
      </sec:authorize>
    </c:otherwise>


    </c:choose>
  </div>
</div>

<br>
<br>

