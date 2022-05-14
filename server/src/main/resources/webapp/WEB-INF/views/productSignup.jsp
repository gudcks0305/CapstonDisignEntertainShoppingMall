<!doctype html>
<html lang="ko">
    <head>
        <meta charset = 'utf-8'>
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
            font-weight: bold;
            vertical-align: top;
            border-bottom: 1px solid #ccc;
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
                        <td>카테고리</td>
                        <td>
                            <select>
                                <option>SM</option>
                                <option>JYP</option>
                                <option>YG</option>
                                <option>기타</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>상품명</td>
                        <td><input type = "text" id = "goods-name" autofocus placeholder = "상품명을 입력하세요" required></td>
                    </tr>

                    <tr>
                        <td>이미지</td>
                        <td><input type = "file" id = "picture"></td>
                    </tr>

                    <tr>
                        <td>판매수량</td>
                        <td><input type='number' id = "number" autofocus placeholder = "수량을 입력하세요" required></td>
                    </tr>

                    <tr>
                        <td>판매가격</td>
                        <td><input type = 'number' id = "price" autofocus placeholder = "가격을 입력하세요" required></td>
                    </tr>

                    <tr>
                        <td>상품설명</td>
                        <td><textarea id = "goods-info" cols = "60" rows = "10"  placeholder = "상품 설명을 입력하세요"></textarea></td>
                    </tr>

                    <tr>
                        <td>비밀번호</td>
                        <td><input type = password name = pw size=10 maxlength=10></td>
                    </tr>
                </table>

                <center>
                    <div id = "buttons">
                        <input type = "submit" value = "등록">
                        <input type = "reset" value = "취소">
                    </div>
                </center>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>