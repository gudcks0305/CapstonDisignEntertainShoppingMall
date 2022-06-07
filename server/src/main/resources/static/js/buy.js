let buy = {
    init : function (){
        $("#btn-buy").on("click", ()=>{
            this.buy();
        });



    },
    buy:function () {
        let data = {

            itemId : $("#productId").val(),
            buyCount : $("#quantity").val()


        }
        $.ajax({
            type: "POST",
            url: "/api/buy",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {
            alert("구매 완료. 상품이 도착할 때 까지 기다려 주세요");


        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

buy.init();