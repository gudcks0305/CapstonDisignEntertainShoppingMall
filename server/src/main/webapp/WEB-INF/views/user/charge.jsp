
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <form class="was-validated">
        <p>now point : ${user.moneyPoint}</p>
        <div class="form-group">
            <label for="moneyPoint">moneyPoint:</label>
            <input type="number" class="form-control" id="moneyPoint" placeholder="Enter moneyPoint" name="moneyPoint" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
    </form>
    <button type="button" class="btn btn-primary " id ="btn-charge" >Charge</button>
<script src ="/js/user.js"></script>
<%@ include file="../Layout/footer.jsp"%>


