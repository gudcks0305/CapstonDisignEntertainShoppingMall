
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
  <sec:authentication property="principal" var ="principal"/>
</sec:authorize>
<!DOCTYPE html>
<html lang="UTF-16">
<head>
  <title>FSFE Entertainment</title>
  <meta charset="utf-16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
  <style>
  </style>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="/">HOME</a>
  ${principal.user.username}
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
    <ul class="navbar-nav">


      <c:choose>
        <c:when test="${empty principal}">
          <li class="nav-item">
            <a class="nav-link" href="/auth/loginForm">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/auth/joinForm">회원가입</a>
          </li>
        </c:when>
        <c:otherwise>
          <li class="nav-item">
            <a class="nav-link" href="/board/saveForm">글쓰기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/defective/predict">불량 진단</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/defective/defectiveTable">제품 데이터</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user/updateForm">회원정보</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/logout">로그아웃</a>
          </li>

        </c:otherwise>
      </c:choose>





    </ul>
  </div>
</nav>
<br>