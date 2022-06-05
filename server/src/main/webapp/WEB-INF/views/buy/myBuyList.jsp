
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="w3-container">
    <h2>${buyList.size()}개 종류의 상품 구매 정보가 있습니다.</h2>
    <p>Use any of the w3-<em>color</em> classes to display a colored row:</p>
    <table class="w3-table-all w3-hoverable">
        <thead>
        <tr class="w3-blue">
            <th>BUY ID</th>
            <th>상품명</th>
            <th>상품 가격</th>
            <th>주문 수량</th>
            <th>총 가격</th>
            <th>배송 상태</th>

        </tr>
        </thead>
        <c:if test="${empty buyList}">
            <tr>
                <td colspan="6">주문 정보가 없습니다.</td>
            </tr>
        </c:if>
        <c:forEach var="buy" items="${buyList}">
        <tr>
            <td>${buy.buyId}</td>
            <td>${buy.item.itemName}</td>
            <td>${buy.item.itemPrice}</td>
            <td>${buy.buyCount}</td>
            <td>${buy.buyCount * buy.item.itemPrice}</td>
            <td>${buy.deliveryStatus.getDisplayName()}</td>
        </tr>
        </c:forEach>
    </table>
</div>


<%@ include file="../Layout/footer.jsp"%>

