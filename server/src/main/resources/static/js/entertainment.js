let entertainment = {
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
   /* private String name;
    private String description;
    private String imageUrl;*/
    save:function () {
        let data = {

            name: $("#name").val(),
            description: $("#description").val(),
            imageUrl : $("#imageUrl").val()

        }
        $.ajax({
            type: "POST",
            url: "/admin/entertainment/add",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (res) {

            alert("회사 추가완료");


        }).fail(function (err) {
            console.log(data);
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

entertainment.init();