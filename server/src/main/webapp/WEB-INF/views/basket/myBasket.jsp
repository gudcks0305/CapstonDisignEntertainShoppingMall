<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>장바구니</title>
    <style>

        .basketdiv {
            width: 100%;
            border-top: 1px solid darkgrey;
            float: left;
            font-size: 0.9375em;
            margin-bottom: 20px;
        }
        .basketdiv .row.head {
            border-bottom: 1px solid darkgrey;
            box-sizing: border-box;
            background-color: darkgrey;
            font-weight: 500;
        }
        .basketdiv .data {
            border-bottom: 1px dashed darkgrey; /상품경계선
        box-sizing: border-box;
            cursor: pointer;
            float: left;
            width: 100%;
        }
        .basketdiv .data .empty{
            text-align: center;
            padding: 12px 0;
        }
        .basketdiv .row.head .subdiv {
            background-color: darkgrey; /헤드색깔
        }
        .basketdiv .row > .subdiv {
            display: block;
            float: left;
        }
        .basketdiv .row > .subdiv:nth-child(1) {
            width: 50%;
        }
        .basketdiv .row > .subdiv:nth-child(2) {
            width: 40%;
        }
        .basketdiv .row > .subdiv:nth-child(3) {
            width: 10%;
        }
        .basketdiv2 .row > .subdiv:nth-child(1) {
            width: 60%;
        }
        .basketdiv2 .row > .subdiv:nth-child(2) {
            width: 40%;
        }
        .basketdiv .row > div > div {
            display: block;
            float: left;
            text-align: center;
            margin: 0;
            padding: 12px 0;
        }
        .basketdiv .row.data > div > div {
            height: 60px;
            line-height: 60px;
        }
        .basketdiv .data .num .updown {
            height: 20px;
            color: gray;
            font-size: 1.5em;
            letter-spacing: 5px;
        }
        .basketdiv .check {
            width: 10%;
        }
        .basketdiv .check input[type=checkbox] {
            transform: scale(1.5);
        }

        .basketdiv .img{
            width: 20%;
        }
        .basketdiv .pname{
            width: 70%;
        }
        .basketdiv2 .pname {
            width: 80%;
        }
        .basketdiv .basketprice {
            width: 33%;
        }
        .basketdiv .num {
            width: 33%;
            min-width: 105px;
        }
        .basketdiv .sum {
            width: 34%;
            max-width: 80px;
            color: #3c3e70;
        }
        .basketdiv .point {
            width: 50%;
        }
        .basketdiv2 .basketprice {
            width: 25%;
        }

        .basketdiv2 .num {
            width: 25%;
        }

        .basketdiv2 .sum {
            width: 25%;
            color: #3c3e70;
        }

        .basketdiv2 .point {
            width: 25%;
        }
        .basketdiv .basketcmd{
            width: 100%;
        }
        .basketdiv .data .pname {
            text-align: left !important;
            line-height: 1.2 !important;
        }
        .basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point {
            text-align: right;
        }
        .baseform > tbody > tr > td:first-child {
            width: 100px;
        }

        .buttongroup {
            padding: 11px 0;
            margin: 50px 0;
        }
        .narrowbuttongroup{
            margin: 15px 0;
        }
        .buttongroup.center {
            text-align: center;
        }
        .buttongroup input[type=text], .buttongroup input[type=password] {
            height: 30px;
        }
        .buttongroup button, .buttongroup a {
            margin-right: 5px;
        }
        .buttongroup button:last-child, .buttongroup a:last-child {
            margin-right: 0;
        }

        .abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button] {
            font-size: 15px;
            padding: 5px 10px;
            background-color: white;
            color: black;
            border: 3px solid black;
            border-radius: 30px;
            text-transform: uppercase;
            letter-spacing: 4px;
            font-family: sans-serif;
            transition: all 0.4s;
        }
        .abutton:focus {
            outline: none;
        }

        .abutton:hover {
            background-color: black;
            color: white;
        }

        .blue {
            color:#3c3e70;
        }
        .basketrowcmd, .sumcount, .summoney{
            text-align: right;
            margin-bottom: 10px;
        }
        .sumcount, .summoney{
            font-size: 1.25em;
            font-weight: bold;
        }
        .buttongroup{
            text-align: center;
        }
        .buttongroup a{
            text-decoration: none;
        }
        .cmd a, .cmd span{
            font-size: 15px;
            padding: 10px 15px;
            border: 3px solid gold;
            background-color: transparent;
            color: gold;
            text-transform: uppercase;
            letter-spacing: 5px;
            font-weight: bold;
            position: relative;
            transition: all 0.4s;
            overflow: hidden;
        }
        .cmd a:focus {
            outline: none;
        }

        .cmd a:hover::before {
            transform: translateY(-100%);
        }

        .cmd a:hover {
            color: #3c3e70;
            border: 3px solid #3c3e70
        }
        .cmd.small a, .cmd.small span {
            padding: 6px 20px;
            font-size: 0.8125em;
        }

        .orderform .p_num {
            text-align: right;
            width: 40px;
            font-size: 1em;
        }

    </style>


<div class="w3-container">
    <h2>My basket</h2>

    <table class="w3-table-all w3-hoverable  w3-centered">
        <thead>
        <tr class="w3-blue">
            <th>이미지</th>
            <th>상품명</th>
            <th>가격</th>
            <th>수량</th>
            <th>합계</th>
            <th>삭제</th>
        </tr>
        </thead>
        <c:set var="total" value="0"/>
        <c:forEach var="basket" items="${basketList.content}">

            <tr>
                <td>
                    <a href="/item/${basket.item.itemId}">
                        <div class="img"><img src="${basket.item.itemImageUrl}" width="60"></div>
                    </a>
                </td>
                <td><span>${basket.item.itemName}</span></td>
                <td><span>${basket.item.itemPrice} 원</span></td>
                <td>
                    <div class="updown">
                        <input type="number" id = "quantity" class="num" min="1" value="${basket.quantity}" >
                    </div>
                </td>
                <td><span>${basket.quantity * basket.item.itemPrice} 원</span></td>

                <td><span><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a></span></td>
            </tr>
            <c:set var="total" value="${total + basket.quantity * basket.item.itemPrice}"/>
        </c:forEach>
    </table>
</div>



    <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 4개</div>
    <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: ${total}원</div>

    <div id="goorder" class="">
        <div class="clear"></div>
        <div class="buttongroup center-align cmd">
            <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            <a href="javascript:void(0);" class="abutton">전체 상품 주문</a>
        </div>
    </div>
</form>

<%@ include file="../Layout/footer.jsp"%>