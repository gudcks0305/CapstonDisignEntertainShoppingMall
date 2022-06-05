
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="w3-container">
    <h2>Artist Manage</h2>
    <p>you can manage this list</p>
    <a onclick="document.getElementById('id01').style.display='block'"  class="w3-button w3-black btn2">ADD</a>
    <ul class="w3-ul w3-card-4">
        <c:forEach var="artist" items="${artistList}">
            <li class="w3-bar">
                <img src="${artist.artistImageUrl}"
                     class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                <div class="w3-bar-item" id = ${artist.artistId}>
                        ${artist.artistName}
                </div>
                <div class="w3-bar-item">
                        ${artist.artistDescription}
                </div>
                <div class="w3-bar-item" style="float: right">
                    <a onclick="  document.getElementById('id02').style.display='block';
                    edit.modal('${artist.artistId}' ,' ${artist.artistName}' ,'${artist.artistDescription}' , '${artist.artistImageUrl}' ,
                      '${artist.artistCountry}', '${artist.artistWebsite} ',
                      '${artist.artistFacebook}', '${artist.artistTwitter}','${artist.artistInstagram}}')" class="w3-button w3-black btn2">EDIT</a>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom">
        <header class="w3-container w3-blue">
                   <span onclick="document.getElementById('id01').style.display='none';
"
                         class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
            <h2>아티스트 추가</h2>
        </header>
        <div id="London" class="w3-container city">
            <form class="w3-container">
                <h2>Category ADD</h2>
                <p>추가 할 아티스트를 입력해주세요 </p>
                <label for="artistName"> artistName </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistName" style="width:30%">
                <label for="artistDescription"> artistDescription </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistDescription" style="width:30%">
                <br>
                <label for="artistImageUrl"> artistImageUrl </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistImageUrl" style="width:30%">
                <label for="artistCountry"> artistCountry </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistCountry" style="width:30%">
                <br>
                <label for="artistWebsite"> artistWebsite </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistWebsite" style="width:30%">
                <label for="artistFacebook"> artistFacebook </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistFacebook" style="width:30%">
                <br>
                <label for="artistTwitter"> artistTwitter </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistTwitter" style="width:30%">
                <label for="artistInstagram"> artistInstagram </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistInstagram" style="width:30%">
                <br>
                <label for = "artistEntertainmentId" >소속사</label>
                <select id = "artistEntertainmentId" name="artistEntertainmentId">
                    <c:forEach var="entertainment" items="${entertainment}">
                        <option value="${entertainment.entertainmentId}">${entertainment.name}</option>
                    </c:forEach>
                </select>
                <button class="w3-btn w3-blue" onclick="artist.save()">Add</button>
            </form>
        </div>
        <div class="w3-container w3-light-grey w3-padding">
            <button class="w3-button w3-right w3-white w3-border"
                    onclick="document.getElementById('id01').style.display='none'">Close</button>
        </div>
    </div>
</div>

<div id="id02" class="w3-modal modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom">
        <header class="w3-container w3-blue">
                   <span onclick="document.getElementById('id02').style.display='none'"
                         class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
            <h2>아티스트 수정</h2>
        </header>
        <div id="edit" class="w3-container city">
            <form class="w3-container">
                <h2>Aritst edit</h2>
                <p>수정 할 정보 </p>
                <input type="hidden" id = "artistId">
                <label for="artistNameEdit"> artistName </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistNameEdit" style="width:30%">
                <label for="artistDescriptionEdit"> artistDescription </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistDescriptionEdit" style="width:30%">
                <br>
                <label for="artistImageUrlEdit"> artistImageUrl </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistImageUrlEdit" style="width:30%">
                <label for="artistCountryEdit"> artistCountry </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistCountryEdit" style="width:30%">
                <br>
                <label for="artistWebsiteEdit"> artistWebsite </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistWebsiteEdit" style="width:30%">
                <label for="artistFacebookEdit"> artistFacebook </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistFacebookEdit" style="width:30%">
                <br>
                <label for="artistTwitterEdit"> artistTwitter </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistTwitterEdit" style="width:30%">
                <label for="artistInstagramEdit"> artistInstagram </label>
                <input class="w3-input w3-border w3-animate-input" type="text" id = "artistInstagramEdit" style="width:30%">
                <br>
                <label for = "artistEntertainmentIdEdit" >소속사</label>
                <select id = "artistEntertainmentIdEdit" name="artistEntertainmentIdEdit">
                    <c:forEach var="entertainment" items="${entertainment}">
                        <option value="${entertainment.entertainmentId}">${entertainment.name}</option>
                    </c:forEach>
                </select>
                <button class="w3-btn w3-blue" onclick="artist.update()">edit</button>
            </form>
        </div>
        <div class="w3-container w3-light-grey w3-padding">
            <button class="w3-button w3-right w3-white w3-border"
                    onclick="document.getElementById('id02').style.display='none'">Close</button>
        </div>
    </div>
</div>
</div>
<script src = "/js/artist.js"></script>
<script>
    let edit = {
        modal : function (artistId,artistName , artistDescription , artistImageUrl , artistCountry , artistWebsite , artistFacebook , artistTwitter , artistInstagram , artistEntertainmentId) {
            document.getElementById('artistId').value = artistId;
            document.getElementById('artistNameEdit').value = artistName;
            document.getElementById('artistDescriptionEdit').value = artistDescription;
            document.getElementById('artistImageUrlEdit').value = artistImageUrl;
            document.getElementById('artistCountryEdit').value = artistCountry;
            document.getElementById('artistWebsiteEdit').value = artistWebsite;
            document.getElementById('artistFacebookEdit').value = artistFacebook;
            document.getElementById('artistTwitterEdit').value = artistTwitter;
            document.getElementById('artistInstagramEdit').value = artistInstagram;
            document.getElementById('artistEntertainmentIdEdit').value = artistEntertainmentId;

        }


    }






</script>



<%@ include file="../Layout/footer.jsp"%>