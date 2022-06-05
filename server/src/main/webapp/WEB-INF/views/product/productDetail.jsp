<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>상세 페이지</title>
    <style>


        .product_view {  position: relative;padding: 0 0 0 600px; box-sizing: border-box;}
        .product_view .img { position: absolute; left: 0; top: 0; padding-left: 100px;}
        .product_view .img > img { width: 400px; height: 400px; border:1px solid #e8e8e8; }
        .product_view .img li:after { content: ""; display: block; clear: both;}
        .product_view .img li { float: left; padding: 10px 10px 0 0;}
        .product_view .img li.on img { border-color:#0a56a9;}
        .product_view .img li img { width: 68px; height: 68px; border:1px solid #e8e8e8;}
        .product_view h2 { margin: 0 0 15px; padding: 0 0 20px; border-bottom:2px solid #333; font-size:24px; color:#232323; line-height: 26px;}
        .product_view table th,
        .product_view table td { padding:14px 0; font-size: 15px; color:#444; text-align: left;}
        .product_view table td.price { font-size: 22px;}
        .product_view table td.total { font-size:19px; color:black;}
        .product_view table td.total b { font-size: 22px;}

        .product_view table select { width:100%; border:1px solid #c6c6c6; box-sizing: border-box;  background: url("../images/") no-repeat right 11px center;appearance:none; -webkit-appearance:none; -moz-appearance:none;}
        .product_view table select::-ms-expand { display: none;}
        .product_view .btns { padding: 45px 0 0; text-align: center;}
        .product_view .btns > a { display: inline-block; width: 136px; height: 42px;border-radius: 2px; font-size: 16px; color:gray; border:3px solid gray; line-height: 42px; }
        .product_view .btns > a.btn1 { background: transparent;}
        .product_view .btns > a.btn2 { background: transparent;}
    </style>


    <br><br>
    <div class="product_view">

        <h2>${item.itemTitle}</h2>
        <table>
            <caption>
                <details class="hide">
                    <summary>상품정보</summary>
                    판매가, 상품코드, 옵션 및 결제금액 안내
                    <div class="description">
                        ${item.itemDescription}
                    </div>
                </details>
            </caption>
            <colgroup>
                <col style="width:173px;">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>판매가</th>
                <td class="price">${item.itemPrice} 원</td>
            </tr>
            <tr>
                <th>상품코드</th>
                <td>${item.itemId}</td>
                <input type="hidden" id = "productId" name="productId" value="${item.itemId}">
            </tr>
            <tr>
                <th>카테고리</th>
                <td>${item.itemCategory.categoryName}</td>
            </tr>
            <tr>
                <th>제조사/공급사</th>
                <td>${item.itemOwner.name}</td>
            </tr>
            <tr>
                <th>구매수량</th>
                <td>
                    <div class="length">
                        <input type="number" style="width: 40px" name="amount" value="1" id = "quantity" min="1" value = "1">

                    </div>
                </td>
            </tr>

            <tr>
                <th>배송비</th>
                <td class="price">2,500</td>
            </tr>
            </tbody>
        </table>
        <div class="img">
            <img src=${item.itemImageUrl} alt="">
        </div>

        <div class="btns">
            <a href="" class="btn2" onclick="basket.save()">ADD CART</a>
            <a onclick="document.getElementById('id01').style.display='block'" class=" w3-black btn2">BUY</a>

            <c:if test="${not empty principal}">
                <sec:authorize access="principal.User.roleType.getCode() == 'ROLE_ADMIN'">
                    <br><br>
                    <a href="/admin/item/${item.itemId}/update" class="btn2">수정하기</a>
                    <a href="/" class="btn2" onclick="item.deleteById()">삭제하기</a>
                </sec:authorize>
            </c:if>

        </div>

        <div id="id01" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom">
                <header class="w3-container w3-blue">
                   <span onclick="document.getElementById('id01').style.display='none'"
                         class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
                    <h2>약관</h2>
                </header>
                <div id="London" class="w3-container city">
                    <h1>정말로 구매하시겠습니까?</h1>
                    <p style="font-weight: bold">구매약관</p>
                    <p>1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 초기 서비스화면 또는 연결화면에 게시합니다.</p>
                    <p> 2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</p>
                    <p>3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다</p>
                </div>
                <div class="w3-container w3-light-grey w3-padding">
                    <button class="w3-button w3-right w3-white w3-border " onclick="buy.buy()">BUY</button>
                    <button class="w3-button w3-right w3-white w3-border"
                            onclick="document.getElementById('id01').style.display='none'">Close</button>
                </div>
            </div>
        </div>
    </div>


<script>
    document.getElementsByClassName("tablink")[0].click();

    function openCity(evt, cityName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("city");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
            tablinks[i].classList.remove("w3-light-grey");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.classList.add("w3-light-grey");
    }
</script>

<br><br>
<script src="/js/item.js"></script>
<script src="/js/basket.js"></script>
<script src="/js/buy.js"></script>
<%@ include file="../Layout/footer.jsp"%>