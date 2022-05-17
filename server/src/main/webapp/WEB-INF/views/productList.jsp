
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
            border : 1px solid #eee;
            border-radius: 5px;
            height : 350px;
            width: 250px;
            padding: 5px;
            margin-bottom: 10px;
        }

        .product-list .container .item-list .card img {
            height: 200px;
            width: 250px;
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
    <div class = "nav" >

    </div>

    <section class = "product-list">
        <div class = "container">
            <div class = "title">

            </div>
            <div class = "item-list">

            </div>
        </div>
    </section>

    <section class = "product-list">
        <div class = "container">
            <div class = "title">
                <h1>PRODUCT LIST</h1>
                <ul>
                    <li><a href = "">앨범</a></li>
                    <li><a href = "">굿즈</a></li>
                    <li><a href = "">콘서트</a></li>
                    <li><a href = "">팬클럽</a></li>
                </ul>
            </div>

            <div class = "item-list">
                <div class = "card">
                    <div class = "img">
                        <img src = "" alt = "">
                    </div>
                    <div class = "text">
                        <h2> 상품명1 </h2>
                        <p> 상품1 짧은 설명 </p>
                        <button><i class = "fas fa-check"></i>상세보기</button>
                    </div>
                </div>

                <div class = "card">
                    <div class = "img">
                        <img src = "" alt = "">
                    </div>
                    <div class = "text">
                        <h2> 상품명2 </h2>
                        <p> 상품2 짧은 설명 </p>
                        <button><i class = "fas fa-check"></i>상세보기</button>
                    </div>
                </div>

                <div class = "card">
                    <div class = "img">
                        <img src = "" alt = "">
                    </div>
                    <div class = "text">
                        <h2> 상품명3 </h2>
                        <p> 상품3 짧은 설명 </p>
                        <button><i class = "fas fa-check"></i>상세보기</button>
                    </div>
                </div>

                <div class = "card">
                    <div class = "img">
                        <img src = "" alt = "">
                    </div>
                    <div class = "text">
                        <h2> 상품명4 </h2>
                        <p> 상품4 짧은 설명 </p>
                        <button><i class = "fas fa-check"></i>상세보기</button>
                    </div>
                </div>

            </div>
        </div>
    </section>
    </body>
