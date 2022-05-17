
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
<h2>Login</h2>
  <form  action="/auth/loginProc" method="POST" class="was-validated">
    <div class="form-group">

      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <button id="btn-login" class="btn btn-primary">로그인</button>
    <a href="https://kauth.kakao.com/oauth/authorize?client_id=f3f86ecdb26330d41131bb781a6a879c&redirect_uri=http://localhost:8080/auth/kakao/callback&response_type=code">
      <img height="38px" src ="/img/kakao_login_button.png"></a>

  </form>
 </div>

<%@ include file="../Layout/footer.jsp"%>


