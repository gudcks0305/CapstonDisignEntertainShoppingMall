let index = {
    init : function (){
        $("#btn-save").on("click", ()=>{
            this.save();
        }),
        $("#btn-update").on("click", ()=>{
            this.update();
        });

    },
    save:function (){
        //alert('user의 save 호출됨');
        let data = {
            username : $("#username").val(),
            password : $("#password").val(),
            email: $("#email").val()
        }
        $.ajax({
            type : "POST",
            url:"/auth/joinProc",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("회원가입이 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    update:function (){
        //alert('user의 save 호출됨');
        let data = {
            id : $("#id").val(),
            username : $("#username").val(),
            password : $("#password").val(),
            email: $("#email").val()
        }
        $.ajax({
            type : "PUT",
            url:"/user",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("회원수정이 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}

index.init();