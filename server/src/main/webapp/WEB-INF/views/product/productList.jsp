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
            border: 2px solid black;
            border-radius: 5px;
            width: 240px;

            margin-bottom: 10px;
        }

        .product-list .container .item-list .card img {
                width: 100%;
                height: 100%;
                object-fit: cover;
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

        <div class = "container w3-container">
            <div class="w3-row slide" style="text-align: center;background: linear-gradient(90deg, #FFC0CB, skyblue );" >

                <c:forEach var="item" items="${items.content}" >
                    <img class="goods-slide w3-circle w3-opacity" src="${item.itemImageUrl}" width="400px" height="300px" style="display: block;margin: 10px auto;">

                </c:forEach>
            </div>
            <div class = "title ">
                <h1>PRODUCT LIST</h1>
                <ul>
                    <c:if test="${arts == null}">
                        <c:forEach var="category" items="${category}">
                            <li ><a class="category" href=/item/category/${category.categoryId}>${category.categoryName}</a></li>
                        </c:forEach>
                    </c:if>
                    <c:if test="${arts != null}">
                        <c:forEach var="category" items="${category}">
                            <li ><a class="category" href=/item/artist/${arts}/${category.categoryId}>${category.categoryName}</a></li>
                        </c:forEach>
                    </c:if>



                </ul>
            </div>

            <div class = "item-list w3-container">
                <c:forEach var="item" items="${items.content}">
                <div  class="card w3-card-4" style="width:25%">
                    <div class = "img">
                        <img src = "${item.itemImageUrl}" style="height: 300px" alt = "">
                    </div>
                    <div class = "text w3-container">
                        <p style="float: right">${item.itemCategory.categoryName}</p>
                        <h2 style="font-size: 12px"> ${item.itemTitle} </h2>
                        <p style="font-size: 10px;">${item.itemName}</p>
                        <a href="/item/${item.itemId}"><button><i class = "fas fa-check"></i>상세보기</button>
                        </a>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    </body>
<script>
    myshow = w3.slideshow(".goods-slide");
</script>
<%@ include file="../Layout/footer.jsp"%>