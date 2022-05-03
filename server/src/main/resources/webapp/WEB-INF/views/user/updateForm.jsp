
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
<h2>회원 정보 수정</h2>
  <form class="was-validated">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="hidden" id="id" value="${principal.user.id}">
      <input type="text" value="${principal.user.username}"class="form-control" id="username" placeholder="Enter username" name="uname" required readonly>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

    <c:if test="${empty principal.user.oauth}">
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password"  class="form-control" id="password" placeholder="Enter password" name="pswd" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
      </div>
    </c:if>
    <div class="form-group">
      <label for="email">email:</label>
      <input type="email" value="${principal.user.email}" class="form-control" id="email" placeholder="Enter email" name="pswd" required readonly>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

  </form>
  <button id ="btn-update" class="btn btn-primary">회원 수정 완료</button>
</div>
<script src ="/js/user.js"></script>
<%@ include file="../Layout/footer.jsp"%>


