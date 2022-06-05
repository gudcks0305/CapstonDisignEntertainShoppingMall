<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>상품 등록</title>
</head>
<style>
    table.table2{
        border-collapse: separate;
        border-spacing: 1px;
        text-align: left;
        line-height: 1.5;
        border-top: 1px solid #ccc;
        margin : 20px 10px;
    }
    table.table2 tr {
        width: 100px;
        padding: 10px;

    }
    table.table2 td {
        width: 500px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
    }
</style>
<body>
<table  style="padding-top:50px" align = center width=700 border=0 cellpadding=2 >
    <tr>
        <td height=20 align= center bgcolor=#ccc><font color=white> 상품 등록 </font></td>
    </tr>
    <tr>
        <td bgcolor=white>
            <table class = "table2">
                <tr>
                    <td>소속사</td>
                    <td>
                        <select id = "itemOwner" name="itemOwner">
                            <c:forEach var="entertainment" items="${entertainment}">
                                <option value="${entertainment.entertainmentId}">${entertainment.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>아티스트</td>
                    <td>

                        <select id = "itemArtist" name="itemArtist">
                            <c:forEach var="artist" items="${artistList}">
                                <option value="${artist.artistId}">${artist.entertainment.name}  ${artist.artistName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>카테고리</td>
                    <td>
                        <select id = "category" name="category">
                            <c:forEach var="category" items="${category}">
                                <option value="${category.categoryId}">${category.categoryName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>상품 등록 제목</td>
                    <td><input type = "text"  name="itemTitle" id = "itemTitle" autofocus placeholder = "등록할 제목을 입력하세요" required></td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type = "text" name = "itemName"id = "itemName" autofocus placeholder = "상품명을 입력하세요" required></td>
                </tr>

                <tr>
                    <td>이미지 링크</td>
                    <td><input type = "text" name = "itemImageUrl"id = "itemImageUrl" autofocus placeholder = "이미지 링크를 입력하세요" required></td>
                </tr>

                <tr>
                    <td>판매수량</td>
                    <td><input type='number' name="itemQuantity" id = "itemQuantity" autofocus placeholder = "수량을 입력하세요" required></td>
                </tr>

                <tr>
                    <td>판매가격</td>
                    <td><input type = 'number' name="itemPrice" id = "itemPrice" autofocus placeholder = "가격을 입력하세요" required></td>
                </tr>

                <tr>
                    <td>상품설명</td>
                    <td><textarea id = "itemDescription" name = "itemDescription"cols = "60" rows = "10"  placeholder = "상품 설명을 입력하세요"></textarea></td>
                </tr>

            </table>

            <center>
                <button id = "btn-save"> 등록</button>
            </center>
        </td>
    </tr>
</table>
</body>
<script src="/js/item.js"></script>
<%@ include file="../Layout/footer.jsp"%>
