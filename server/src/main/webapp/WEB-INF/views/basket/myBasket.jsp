<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>장바구니</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


</head>

<body>

<form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;">
    ${basketList.getTotalElements()}개 종류의 상품이 장바구니에 담겼습니다.
    <input type="hidden" name="cmd" value="order">
    <div class="basketdiv" id="basket">
        <div class="row head">
            <div class="subdiv">
                <div class="check">선택</div>
                <div class="img">이미지</div>
                <div class="pname">상품명</div>
            </div>
            <div class="subdiv">
                <div class="basketprice">가격</div>
                <div class="num">수량</div>
                <div class="sum">합계</div>
            </div>
            <div class="subdiv">

                <div class="basketcmd">삭제</div>
            </div>
            <div class="split"></div>
        </div>
        <c:set var="total" value="0"/>
        <c:set var="count" value="0"/>
        <c:forEach var="basket" items="${basketList.content}">
        <div class="row data">
            <div class="subdiv">
                <div class="check"><input type="checkbox" name="buy"  value="260" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div>
                <div class="img"><img src= "${basket.item.itemImageUrl}" width="60"></div>
                <div class="pname">
                    <span>${basket.item.itemName}</span>
                </div>
            </div>
            <div class="subdiv">
                <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="${basket.item.itemPrice}">${basket.item.itemPrice}원</div>
                <div class="num">
                    <div class="updown">
                        <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="${basket.quantity}" onkeyup="javascript:basket.changePNum(1);">
                        <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                        <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                    </div>
                </div>
                <div class="sum">${basket.quantity * basket.item.itemPrice}</div>
            </div>
            <div class="subdiv">
                <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
            </div>
        </div>
            <c:set var="total" value="${total + basket.quantity * basket.item.itemPrice}"/>
            <c:set var="count" value="${count + basket.quantity}"/>
        </c:forEach>


    </div>

    <div class="right-align basketrowcmd">
        <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
        <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
    </div>

    <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: ${count}개</div>
    <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: ${total}원</div>

    <div id="goorder" class="">
        <div class="clear"></div>
        <div class="buttongroup center-align cmd">
            <a href="javascript:void(0);">선택한 상품 주문</a>
        </div>
    </div>
</form>

</body>
<script src="/js/basket.js"></script>
<script type="text/javascript" src="/js/add.js"></script>
<link rel="stylesheet" href="/css/add.css" src/>
<%@ include file="../Layout/footer.jsp"%>