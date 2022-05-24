<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>상세 페이지</title>
    <style>
        body { padding: 50px;}

        .product_view { position: relative;padding: 0 0 0 395px; width: 962px; box-sizing: border-box;}
        .product_view .img { position: absolute; left: 0; top: 0;}
        .product_view .img > img { width: 368px; height: 370px; border:1px solid #e8e8e8; }
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



    <div class="product_view">
        <h2>제품 이름</h2>
        <table>
            <caption>
                <details class="hide">
                    <summary>상품정보</summary>
                    판매가, 상품코드, 옵션 및 결제금액 안내
                </details>
            </caption>
            <colgroup>
                <col style="width:173px;">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>판매가</th>
                <td class="price">100,000</td>
            </tr>
            <tr>
                <th>상품코드</th>
                <td>code8514</td>
            </tr>
            <tr>
                <th>제조사/공급사</th>
                <td>(주) / 엔터</td>
            </tr>
            <tr>
                <th>구매수량</th>
                <td>
                    <div class="length">
                        <input type="number" style="width: 40px" name="amount" value="${row.amount}" min="1">
                        <input type="hidden" name="productId" value="${row.productId}">
                    </div>
                </td>
            </tr>
            <tr>
                <th>옵션선택</th>
                <td>
                    <select>
                        <option>기본(+0)</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>배송비</th>
                <td class="price">2,500</td>
            </tr>
            <tr>
                <th>결제금액</th>
                <td class="total"><b>102,500</b>원</td>
            </tr>
            </tbody>
        </table>
        <div class="img">
            <img src="" alt="">
            <ul>
                <li class="on"><a href="#a"><img src="" alt=""></a></li>
                <li><a href="#a"><img src="" alt=""></a></li>
            </ul>
        </div>
        <div class="btns">
            <a href="" class="btn1">장바구니</a>
            <a href="" class="btn2">구매하기</a>
        </div>
    </div>

<%@ include file="../Layout/footer.jsp"%>