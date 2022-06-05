<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<div class="w3-container" style="margin-left: 10%">
    <c:forEach items="${artistList}" var="artist">
    <div class="w3-card-4 w3-margin grid w3-quarter  " style="width: 20%">

            <div class="w3-display-container w3-text-white w3-hover-shadow" style="height: 30vh" >
                <a href="/item/artist/${artist.artistId}">
                    <img src="${artist.artistImageUrl}" alt="Lights" style= "width:100% ; height: 30vh">
                </a>
                <div class="w3-xlarge w3-display-bottomleft w3-padding">${artist.artistName}</div>
            </div>
            <div class="w3-row">
                <div class="w3-third w3-center">
                    <h5>TWIT</h5>
                    <a href="${artist.artistTwitter}">
                    <img src="data:image/png;base64,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"
                         alt="TWIT" style="width:80px">
                    </a>
                </div>
                <div class="w3-third w3-center">
                    <h5>INSTA</h5>
                    <a href="${artist.artistInstagram}">
                        <img src="https://img.icons8.com/fluency-systems-regular/144/instagram-new--v1.png"
                             alt="INSTA" style="width:80px">
                    </a>
                </div>
                <div class="w3-third w3-center w3-margin-bottom">
                    <h5>FACEBOOK</h5>
                    <a href="${artist.artistFacebook}">
                    <img src="https://w7.pngwing.com/pngs/909/934/png-transparent-font-awesome-computer-icons-facebook-inc-font-face-siluet-rectangle-logo-blog.png"
                         alt="FACEBOOK" style="width:80px">
                    </a>
                </div>
            </div>

    </div>
    </c:forEach>
</div>
<%@ include file="../Layout/footer.jsp"%>