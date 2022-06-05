let category = {
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
    save:function () {
        let data = {

            categoryName: $("#categoryName").val(),
            description: $("#description").val()

        }
        $.ajax({
            type: "POST",
            url: "/admin/category/add",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {
            alert("카테고리 추가완료");


        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    update:function () {
        let data = {
            categoryId: $("#categoryId").val(),
            categoryName: $("#categoryNameEdit").val(),
            description: $("#descriptionEdit").val()

        }
        $.ajax({
            type: "PUT",
            url: "/admin/category/update",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {
            location.href="/admin/category/add";
            alert("카테고리 수정 완료");


        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

category.init();