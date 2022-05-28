let index = {
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
            itemOwner : $("#itemOwner").val(),
            itemCategory : $("#category").val(),
            itemTitle : $("#itemTitle").val(),
            itemName : $("#itemName").val(),
            itemImageUrl : $("#itemImageUrl").val(),
            itemQuantity : $("#itemQuantity").val(),
            itemPrice : $("#itemPrice").val(),
            itemDescription : $("#itemDescription").val(),
        }
        $.ajax({
            type : "POST",
            url:"/api/admin/item/add",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("상품 등록이 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            console.log(err)
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },

}

index.init();