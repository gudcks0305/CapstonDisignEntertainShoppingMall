
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
<h2>회원 정보 수정</h2>
  <a href="/user/chargeForm">충전하기</a>
  <form class="was-validated">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" value="${principal.user.username}"class="form-control" id="username" placeholder="Enter username" name="uname" required readonly>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
      ${principal.user}

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password"  class="form-control" id="password" placeholder="Enter password" name="pswd" required>
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Please fill out this field.</div>
      </div>

    <div class="form-group">
      <label for="email">email:</label>
      <input type="email" value="${principal.user.email}" class="form-control" id="email" placeholder="Enter email" name="pswd">
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

    <div class="form-group">
      <label for="phone">phone:</label>
      <input type="text" phone="${principal.user.phone}" class="form-control" id="phone" placeholder="Enter phone" name="phone"  >
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" value="${principal.user.address}" class="form-control" id="address" placeholder="Enter address" name="address" >
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

    <div class="form-group">
      <label for="name">name:</label>
      <input type="text" value="${principal.user.name}" class="form-control" id="name" placeholder="Enter name" name="name" >
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="address">ImageUrl:</label>
      <input type="text" value="${principal.user.imageUrl}" class="form-control" id="imageUrl" placeholder="Enter imageUrl" name="imageUrl" >
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>

  </form>
  <button id ="btn-update" class="btn btn-primary">수정</button>
</div>
<script src ="/js/user.js"></script>
<%@ include file="../Layout/footer.jsp"%>


