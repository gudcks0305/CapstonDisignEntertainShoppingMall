<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                        <td>작성자</td>
                        <td><input type = "text" size=62 id = "writer-name" autofocus placeholder = "닉네임을 입력하세요" required></td>
                    </tr>

                    <tr>
                        <td>제목</td>
                        <td><input type = "text" size=62 autofocus placeholder = "제목을 입력하세요" required></td>
                    </tr>

                    <tr>
                        <td>내용</td>
                        <td><textarea id = "goods-info" cols = "60" rows = "10"  placeholder = "공지사항을 입력하세요"></textarea></td>
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
    </body>
<%@ include file="../Layout/footer.jsp"%>
