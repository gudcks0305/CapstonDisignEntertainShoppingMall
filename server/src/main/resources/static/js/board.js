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
            title : $("#title").val(),
            content : $("#content").val(),

        }
        $.ajax({
            type : "POST",
            url:"/api/board",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("글쓰기가 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    deleteById:function (){
        let id = $("#id").text()
        console.log(id)
        $.ajax({
            type : "DELETE",
            url:"/api/board/"+id,
            dataType :"json"
        }).done(function (res){
            alert("삭제가 완료되었습니다.");
            location.href ="/";
        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    update:function (){
        let id =  $("#id").val()

        let data = {
            title : $("#title").val(),
            content : $("#content").val(),

        }
        $.ajax({
            type : "PUT",
            url:"/api/board/"+id,
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("글수정이 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

index.init();