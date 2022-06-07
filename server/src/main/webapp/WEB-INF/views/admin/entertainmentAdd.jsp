
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form class="w3-container">
    <h2>Entertainment ADD</h2>
    <p>추가 할 회사명을 입력해주세요 </p>
    <label for="name"> Entertainment Name </label>
    <input class="w3-input w3-border w3-animate-input" type="text" id = "name" style="width:30%">
    <label for="description"> Description </label>
    <input class="w3-input w3-border w3-animate-input" type="text" id = "description" style="width:30%">
    <label for="imageUrl"> imageUrl </label>
    <input class="w3-input w3-border w3-animate-input" type="text" id = "imageUrl" style="width:30%">
    <br>
    <button class="w3-btn w3-blue" onclick="entertainment.save()">Add</button>
</form>
<div class="w3-container">
    <h2>Entertain List</h2>
    <p>you can update this list</p>
    <ul class="w3-ul w3-card-4">
        <c:forEach var="entertainment" items="${entertainment}">
            <li class="w3-bar">
                <img src="${entertainment.imageUrl}"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">${entertainment.name}</span><br>
                    <span>${entertainment.description}</span>
                </div>
                <span class="w3-bar-item">
                    <button class="w3-btn w3-blue" onclick="entertainment.update(${entertainment.entertainmentId})">Update</button>
                    <button class="w3-btn w3-red" onclick="entertainment.delete(${entertainment.entertainmentId})">Delete</button>
                </span>
            </li>
        </c:forEach>
        <a href="/admin/entertainment/update">
            <li class="w3-bar">
                <img src="data:image/png;base64,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"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">Category</span><br>
                    <span>ADD</span>

                </div>
            </li>
        </a>

    </ul>
</div>
<script src = "/js/entertainment.js"></script>
<%@ include file="../Layout/footer.jsp"%>
