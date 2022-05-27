<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath();%>
<jsp:include page="../ "/>
<style type="text/css">
    div#backbody{
        background-color: #f5f5f0;
        font-size: 13pt;
        min-width: 1480px;
        width: 100%;
        padding: 50px 0;
    }
    #frame{
        width: 80%;
        margin: 0 auto;
        padding: 50px 50px;
        background-color: #fff;
    }
    #frame2{
        border-bottom: solid 1px #e0e0eb;
        padding: 20px 0;
    }
    .home {
        float: right;
        clear: both;
    }

    table.calculation1{
        clear: both;
        border :solid 1px #e0e0eb;
        border-collapse: collapse;
        background-color: #f5f5f0;
        width: 100%;
        font-size: 10pt;
    }
    table.calculation1 th{
        border: solid 1px #e0e0eb;
        padding: 10px 0;
        text-align: center;
    }
    table.calculation1 td{
        border: solid 1px #e0e0eb;
        text-align: center;
    }
    table.calculation2{
        border: solid 1px #e0e0eb;
        border-collapse: collapse;
        background-color: #f5f5f0;
        width: 100%;
        font-size: 10pt;
    }
    table.calculation2 th{
        border: solid 1px #e0e0eb;
        text-align: center;
    }
    table.calculation2 td{
        border: solid 1px #e0e0eb;
        text-align: center;
    }
    .price{
        font-size: 20pt;
        font-weight: bold;
    }
    .lifont{ font-size: 10pt; color:gray}

    .delivery{
        border: solid 1px gray;
        border-collapse: collapse;
        width: 100%;
        font-size: 12pt;
    }
    table.delivery th, td { border: solid 1px #e0e0eb; padding: 12px 10px;}
    .deliverytd{font-size: 12pt;background-color: #f5f5f0;}

    .payArea{
        height: 218px;
        position: relative;
        padding: 0 245px 0 0;
        border: 1px solid #777;
        color: #353535;
        line-height: 1.5;
    }
    .payment{
        border-right: solid 1px gray;
        float: left;
        width: 100%;
        height: 100%;
    }
    .total{
        float: right;
        width: 240px;
        margin: 0 -240px 0 0;
        text-align: right;
        background: #fbfafa;
        font-size: 11pt;
    }
    .btn{
        border: none;
        color: white;
        padding: 5px 10px;
        font-size: 13px;
        cursor: pointer;
        border-radius: 5px;
    }
    default {background-color: #264d73; border:solid 1px gray; color: #fff;}
    default:hover{background: #ddd;}
    bacbtn{background: #fff; border: solid 1px gray;}

    .btnfloat{float:left;}
    .btnfloat2{float: right;}
    .clearboth{clear:both;}
</style>

<script type="text/javascript">
    $(document).ready(function (){
        $(".calculation1 thead input:checkbox[id=check]") .click (function() {
            var bool = $(this).prop("checked");
            $(" .calculation1 tbody input:checkbox[name=checkbox]").prop("checked", bool);
        });
            $(". calculation1 tbody input:checkbox[name=checkbox]" ).click (function() {
                var flag = false;

                $(".calculation1 tbody input:checkbox[name=checkbox]").each(function () {
                    var bool = $(this).prop("checked");

                    if (!bool) {
                        $(".calculation1 thead input:checkbox[id=check]").prop("checked", false);
                        flag = true;
                        return false;
                    }
                });
                if (!flag) {
                    $(".calculation1 thead input:checkbox[id=check]").prop("checked", true);
                }
            });
            $("#emailChoice").bind("change",function(){
                $(#domainName).val($(this).val());
            });
    });

    function openDaumPOST(){
        new daum.Postcode({
            oncomplete: function (data) {
                document. getElementById( "postnum1") .value = data. postcode1;
                document.getElementById( "postnum2") .value = data.postcode2;
                document.getElementById("addr1"). value = data.address;
                document. getElementById("addr2" ) . focus () ;
            }
        }).open();
    }
</script>

<div  id="backbody">
    <div id="frame">
        <form>
            <div id="frame2">
                <span style="font-size: 16pt; font-weight: bold;"> 구매페이지</span>
                <span class="home">홈 > 장바구니</span>
                <span></span>
            </div>
            <br/>

            <div>
                <table class="calculation1">
                    <thead>
                    <tr>
                        <th colspan="10" style="text-align: left; padding-left:10px;">일반상품(1)</th>
                    </tr>
                    <tr>
                        <th><input type="checkbox" name="checkbox" id="check" /></th>
                        <th><span>이미지</span></th>
                        <th style="width: 550px;"><span>상품정보</span></th>
                        <th>판매가</th>
                        <th>수량</th>
                        <th style="width: 100px;">적립금</th>
                        <th>배송구분</th>
                        <th>배송비</th>
                        <th>합계</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr style="height: 90px; background-color:#fff;">
                    <td style="text-align: left; text-align: center; border-right: none;">
                    <input type="checkbox" name="checkbox"/>
                    </td>
                        <td style="border-left: none; border-right: none;"><img style="width: 45%;" src="">
                        <td style="text-align: left; padding-left: 10px; border-left: none; font-weight: bold">엔터테이먼트</td>

                        <td><span style="padding-left: 10px;">0</span>원</td>
                        <td style="width: 80px;">
                            <span>1</span>
                        </td>

                        <td>-</td>
                        <td>기본 배송</td>
                        <td><span> 0 </span> 원</td>
                    </tr>
                    </tbody>

                    <tfoot>
                    <tr style="height: 60px;">
                    <td colspan="5" style="border-right: none; text-align: Left; padding-left: 10px;">
                    <span>[기본배송]</span>
                    </td>
                    <td colspan="5" style="border-left: none; text-align: right; padding-right: 10px;">
                        상품금액<span>0</span>+<span>배송비2,500=합계</span>&nbsp;<span style="font-weight: bold; font-size: 10pt;">0</span>원</td>
                </td>
                </tr>
                </tfoot>
                </table>
                <div style="border: solid 1px #e0e0eb; border-right :none; border-left:none; padding: 11px 0; background-color:lightpink;">
                <span style="font-size: 10pt; color:red;"> 상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</span>
                </div>
        </div>

            <div style="margin: 10px 0; padding-bottom:50px; border-bottom: solid 1px gray;">
                <button type="button" class="btn default btnfloat" style="background-color: gray; color: #fff;">x 선택한 상품 삭제하기</button>
            <button type="button" class="btn default btnfloat2" onclick="javascript:history.back()">이전 페이지›</button>
            <span class="clearboth"></span>
    </div>
    <br/><br/>

    <span style="font-size: 12pt; display: inline-block; padding-bottom: 10px; "›\>&nbsp;배송정보</span>
    <table class="delivery">
    <thead>
    <tr>
    <td class="deliveryta">배송지 선택</td>
    <td>
        <input type="radio" name="bb"/>
        <label>  회원정보와 동일</label>

         <input type="radio" name="bb"/>
        <label>새로운 배송지</label>&nbsp;
            <button type="button" style="background-color: #fff; cursor: pointer;  border: solid 1px gray;">주소목록보기</button>
            </td>
    </tr>
    <tr>
    <td class="deliverytd ">받으시는 뷴&nbsp; <span style="color: red">*</span></td>
        <td><input type="text"/></td>
    </tr>
    <tr>
        <td class= "deliverytd">주소&nbsp; <span style="color: red">*</span>
        </td>
        <td>
        <input type="text" id="postnum1" size="10" maxlength="5"/>
        &nbsp;
            <button type="button" style="cursor: pointer; margin-bottom: 10px; background-color: #fff; border: solid 1px gray;">우편번호 찾기</button>
            <br/><input style="margin-bottom: 10px;" type="text" id="addr1" size="50"/><br/>
            <input type="text" id="addr2" size="50"/>
        </td>
    </tr>
    <tr>
        <td class="deliverytd">휴대전화&nbsp;<span style="color: red">*</span> </td>
        <td><input type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
    </tr>
    <tr>
        <td class="deliverytd">이메일&nbsp;<span style="color: red">*</span></td>
        <td><input type="text"/>@<input id="domainName" type="text"/>&nbsp;
        <select id="emailChoice" style="height: 20px;">
            <option>-이메일 선택-</option>
            <option>daum.net</option>
            <option>naver.com</option>
            <option>nate.com</option>
            <option>gmail.com</option>
        </select>
        <span style="font-size: 10pt; color: gray;">
            <p>이메일을 통해 주문처리과정을 보내드립니다.<br/></p>
        </span>
        </td>
    </tr>

        <tr>
            <td class="deliverytd"> 배송메세지</td>
            <td><textarea rows="5" cols="100"></textarea></td>
        </tr>
    </thead>
    </table>
            <br/><br/>

     <table class="calculation2">
         <tr>
             <th>총 상품금액</th>
             <th>총 배송비</th>
             <th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
         </tr>

         <tr style="background-color: #fff;">
             <td style="padding: 23px 0;"><span class="price">0</span>원 </td>
             <td>+<span class="price">0</span>원 </td>
             <td>=<span class="price">0</span>원 </td>
         </tr>
     </table>
            <br/><br/>

            <div class="payArea">
                <div class="payment">
                    <div style="padding: 18px 10px; font-size: 10pt; border-bottom: solid 1px #e0e0eb;">
                        <input type="radio" name="cardradio" checked/><label>카드결제</label>&nbsp;&nbsp;

                        <input type="radio" name="cardradio" /><label>실시간 계좌이체</label>&nbsp;&nbsp;
                        <input type="radio" name="cardradio" /><label>휴대폰 결제</label>&nbsp;&nbsp;
                        <input type="radio" name="cardradio" /><label>무통장 입금</label>&nbsp;&nbsp;
                        <input type="radio" name="cardradio" /><label>에스크로 (가상계좌)</label>&nbsp;&nbsp;
                    </div>

                    <div align="left">
                        <span style=" font-size: 10pt; color: gray;"> 최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</span>
                    </div>
                </div>
                <div class="total">
                    <span style="display: inline-block; padding: 20px 10px;">최종 결제 금액 </span><br/>
                    <span style="font-size: 25pt; font-weight: bold; padding: 0px 10px;">0원</span><br/><br/>
                    <button type="button" class="btn default" style="width: 90%; height: 60px; margin-right: 10px;  background-color: #3c3e70; font-size: 25px;"> 결제하기</button>
                </div>
            </div>
        </form>
    </div>
</div>
