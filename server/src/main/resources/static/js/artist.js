let artist = {
    init : function (){
        $("#btn-save").on("click", ()=>{
            this.save();
        });
        let artistEntertainmentId = $("#artistEntertainmentId").val()
        console.log(artistEntertainmentId);


    },
    save:function () {
        let data = {

            artistName: $("#artistName").val(),
            artistDescription: $("#artistDescription").val(),
            artistImageUrl : $("#artistImageUrl").val(),
            artistCountry : $("#artistCountry").val(),
            artistWebsite : $("#artistWebsite").val(),
            artistFacebook : $("#artistFacebook").val(),
            artistInstagram : $("#artistInstagram").val(),
            artistTwitter : $("#artistTwitter").val(),
            entertainmentId : $("#artistEntertainmentId").val()

        }
        $.ajax({
            type: "POST",
            url: "/admin/artist/add",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {
            alert("아티스트 정보 등록 완료");


        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    update:function () {
        let data = {
            artistId : $("#artistId").val(),
           artistName: $("#artistNameEdit").val(),
            artistDescription: $("#artistDescriptionEdit").val(),
            artistImageUrl : $("#artistImageUrlEdit").val(),
            artistCountry : $("#artistCountryEdit").val(),
            artistWebsite : $("#artistWebsiteEdit").val(),
            artistFacebook : $("#artistFacebookEdit").val(),
            artistInstagram : $("#artistInstagramEdit").val(),
            artistTwitter : $("#artistTwitterEdit").val(),
            entertainmentId : $("#artistEntertainmentIdEdit").val()

        }
        $.ajax({
            type: "PUT",
            url: "/admin/artist/update",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {
            alert( data.artistName + "  아티스트 정보 수정 완료");
            location.href = "/admin/artist/add";

        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

artist.init();