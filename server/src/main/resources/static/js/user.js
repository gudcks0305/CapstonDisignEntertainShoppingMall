let index = {
    init : function (){
        $("#btn-save").on("click", ()=>{
            this.save();
        }),
        $("#btn-update").on("click", ()=>{
            this.update();
        });
        $("#btn-charge").on("click", ()=>{
            this.charge();
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
        /*<%--u.setPassword(reqUser.getPassword());
        u.setEmail(reqUser.getEmail());
        u.setName(reqUser.getName());
        u.setPhone(reqUser.getPhone());
        u.setAddress(reqUser.getAddress());
        u.setImageUrl(reqUser.getImageUrl());--%>*/
        let data = {
            username : $("#username").val(),
            password : $("#password").val(),
            email: $("#email").val(),
            phone: $("#phone").val(),
            address: $("#address").val(),
            imageUrl: $("#imageUrl").val(),
            name: $("#name").val()
        }
        $.ajax({
            type : "PUT",
            url:"/user/update",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("회원수정이 완료되었습니다.");
            location.href ="/";

        }).fail(function (err){
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    charge:function (){
        let data = {
            moneyPoint : $("#moneyPoint").val()

        }
        $.ajax({
            type : "PUT",
            url:"/user/charge",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("충전이 완료되었습니다.");
            location.href ="/";
        }
        ).fail(function (err){
            alert(JSON.stringify(err))
        }
        ); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청
    }

}

index.init();