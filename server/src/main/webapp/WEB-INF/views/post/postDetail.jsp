<!doctype html>
<html lang="ko">
<head>
    <meta charset = 'utf-8'>
    <title>공지사항 등록</title>
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
        <td height=20 align= center bgcolor=#ccc><font color=white> 공지사항 등록 </font></td>
    </tr>
    <tr>
        <td bgcolor=white>
            <table class = "table2">
                <tr>
                    <td>소속사</td>
                    <td>SM</td>
                </tr>
                <tr>
                    <td>작성자</td>
                    <td>host</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td>오픈</td>
                </tr>

                <tr>
                    <td>공지</td>
                    <td><textarea id = "goods-info" cols = "60" rows = "10"  placeholder = "공지합니다"></textarea></td>
                </tr>
            </table>

            <center>
                <div id = "buttons">
                    <input type = "submit" value = "수정">
                    <input type = "reset" value = "목록">
                </div>
            </center>
        </td>
    </tr>
</table>
</body>
</html>