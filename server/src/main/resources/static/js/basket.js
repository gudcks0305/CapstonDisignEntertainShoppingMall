let basket = {
    init : function (){
        $("#btn-save").on("click", ()=>{
            this.save();
        });
        $("#btn-delete").on("click", ()=>{
            this.deleteById();
        });
        $("#btn-update").on("click", ()=>{
            this.update();
        });


    },
    save:function (){
        let data = {

            productId : $("#productId").val(),
            quantity : $("#quantity").val()

        }
        $.ajax({
            type : "POST",
            url:"/api/basket",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("장바구니에 담았습니다. ");
            location.href ="/";

        }).fail(function (err){
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    deleteById:function (){
        let basketId = $("#basketId").text()
        console.log(basketId)
        $.ajax({
            type : "DELETE",
            url:"/api/basket/"+basketId,
            dataType :"json"
        }).done(function (res){
            alert("삭제가 완료되었습니다.");
            location.href ="/";
        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

basket.init();