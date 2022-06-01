
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form class="w3-container">
    <h2>Category ADD</h2>
    <p>추가 할 카테고리를 입력해주세요 </p>
    <label for="categoryName"> Category Name </label>
    <input class="w3-input w3-border w3-animate-input" type="text" id = "categoryName" style="width:30%">
    <label for="description"> Description </label>
    <input class="w3-input w3-border w3-animate-input" type="text" id = "description" style="width:30%">
    <br>
    <button class="w3-btn w3-blue" onclick="category.save()">Add</button>
</form>
<script src = "/js/category.js"></script>
<%@ include file="../Layout/footer.jsp"%>
