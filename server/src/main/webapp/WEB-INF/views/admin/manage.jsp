
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="w3-container">
    <h2>ADMIN Management</h2>
    <p>you can manage this list</p>
    <ul class="w3-ul w3-card-4">
        <a href="/admin/category/add">
            <li class="w3-bar">
                <img src="data:image/png;base64,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"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">Category</span><br>
                    <span>ADD</span>
                </div>
            </li>
        </a>
        <a href="/admin/entertainment/add">
            <li class="w3-bar">
                <img src="https://cdn-icons-png.flaticon.com/512/2083/2083256.png"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">ENTERTAINMENT</span><br>
                    <span>MANAGE</span>
                </div>
            </li>
        </a>
        <a href="/admin/item/add">
            <li class="w3-bar">
                <img src="data:image/png;base64,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"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">PRODUCT</span><br>
                    <span>ADD</span>
                </div>
            </li>
        </a>

        <a href="#">
            <li class="w3-bar">
                <img src="https://cdn-icons-png.flaticon.com/512/1946/1946429.png"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">USER</span><br>
                    <span>REQUEST</span>
                </div>
            </li>
        </a>
        <a href="/admin/artist/add">
            <li class="w3-bar">
                <img src="https://st2.depositphotos.com/4403291/10075/v/450/depositphotos_100759088-stock-illustration-star-vector-logo-template.jpg"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">ARTIST</span><br>
                    <span>ADD</span>
                </div>
            </li>
        </a>
        <a href="#">
            <li class="w3-bar">
                <img src=""
                class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item">
                    <span class="w3-large">MOCK</span><br>
                    <span>MOCK</span>
                </div>
            </li>
        </a>
    </ul>
</div>

<%@ include file="../Layout/footer.jsp"%>
