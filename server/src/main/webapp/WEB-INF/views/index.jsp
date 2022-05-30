
<%@ include file="Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    body {
        background: linear-gradient(90deg, #FFC0CB, #00FFFF );
    }
    h1 {
        font-size: 50px;
        font-weight: bold;
        color: #000;
        margin: 0;
        padding: 0;
        text-align: center;
        font-family: Lobster , Serif;
    }
    .slide{
        margin-left: 20%;
        margin-right: 20%;
    }
    .slide img{
        max-width: 100%;
    }

</style>
<body>
    <h1>FSFE</h1>
    <div class="w3-row slide">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/BH_PC_BANNER.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/Beatbox_POLA_b_pc.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/META_bn_PC2.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/ONEW_DICE_MD_BN_PC.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/RV_BN_PC.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/SUHO_Grey_Suit_BN_PC.jpg">
        <img class="goods-slide w3-circle" src="https://smtownandstore.com/web/main/01_MAIN_BANNER/universe_b_pc.jpg">
    </div>
</body>




<script>
    myshow = w3.slideshow(".goods-slide");
</script>
<%@ include file="Layout/footer.jsp"%>


