<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <style>
        .product-list {
            padding-top: 70px;
            padding-bottom: 70px;
        }
        .product-list .container {
            max-width: 1100px;
            margin: auto;
        }
        .product-list .container .title ul {
            padding-left: 0;
            list-style: none;
        }
        .product-list .container .title ul li {
            display: inline;
            margin-right: 30px;
        }
        .product-list .container .title ul li a {
            text-decoration: none;
            color : #444;
        }
        .product-list .container .item-list {
            display : flex;
            flex-wrap : wrap;
            justify-content: space-between;

        }

        .product-list .container .item-list .card {
            border: 3px solid black;
            border-radius: 5px;
            height : 350px;
            width: 250px;
            padding: 5px;
            margin-bottom: 10px;
        }

        .product-list .container .item-list .card img {
            height: 200px;
            width: 235px;
        }

        .product-list .container .item-list .card .text p {
            font-size: 14px;
            opacity: .8;
        }

        .product-list .container .item-list .card .text button {
            background: gray;
            color: white;
            border: 2px solid white;
            border-radius: 5px;
            padding: 5px 10px;
            font-size: 10px;
            transition: .5s ease;
        }

        .product-list .container .item-list .card .text button:hover {
            transition: .5s ease;
            border: 2px solid black;
            background: transparent;
            color: dimgray;
        }
    </style>
    <body>


    <section class = "product-list">
        <div class = "container">
            <div class = "title">
                <h1>PRODUCT LIST</h1>
                <ul>

                    <c:forEach var="category" items="${category}">
                        <li><a href=/item/list/${category.categoryId}>${category.categoryName}</a></li>
                    </c:forEach>

                </ul>
            </div>

            <div class = "item-list">
                <c:forEach var="item" items="${items.content}">
                <div class = "card">
                    <div class = "img">
                        <img src = "${item.itemImageUrl}" alt = "">
                    </div>
                    <div class = "text">
                        <h2> ${item.itemTitle} </h2>
                        <p>${item.itemName}</p>
                        <a href="/item/${item.itemId}"><button><i class = "fas fa-check"></i>상세보기</button>
                    </div>
                </div>
                </c:forEach>

            </div>
        </div>
    </section>
    </body>
<%@ include file="../Layout/footer.jsp"%>