let index = {
    init : function (){
        $("#btn-predict").on("click", ()=>{
            this.predict();
        });
        $("#btn-update").on("click",()=>{
            this.update();
        });
        $("#btn-insert").on("click",()=>{
            this.insert();
        });


    },
    predict:function (){
        //alert('user의 save 호출됨');
        let data = {
            meanTemp : $("#meanTemp").val(),
            cjOutC1 : $("#cjOutC1").val(),
            cjOutC2: $("#cjOutC2").val(),
            cjOutD3: $("#cjOutD3").val(),
            inD3: $("#inD3").val()

        }
        $.ajax({
            type : "POST",
            url:"/api/defective",
            //url: 'http//:localhost:8000/api',
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            console.log(res)
            console.log(data)
            if(res.predict === 1){
                if($("#result").text()=== '' |$("#result").text() === '불량일것 같습니다. ' ){
                    $("result").text("양품일것 같습니다. ");
                }
                alert("양품일것 같습니다. ")
            }else {
                if($("#result").text() === '' |$("#result").text() === '양품일것 같습니다. ' ){
                    $("result").text("부적합 일것 같습니다. ");
                }
                alert("부적합 일것 같습니다. ")
            }



        }).fail(function (err){
            console.log(err)
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    update:function (){
        let id = $("#id").val()
        let data = {
            date : new Date().getUTCDate(),
            meanTemp : $("#Temp").val(),
            defective: $("#defective").val(),
            label: $("#label").val(),
            cjC1F: $("#cjC1F").val(),
            cjC2F : $("#cjC2F").val(),
            cjD3F : $("#cjD3F").val(),
            cjC1S: $("#cjC1S").val(),
            cjC2S: $("#cjC2S").val(),
            cjD3S: $("#cjD3S").val(),
            cjMoterRpm : $("#cjMoterRpm").val(),
            cjOutC1 : $("#cjOutC1").val(),
            cjOutC2: $("#cjOutC2").val(),
            cjOutD3: $("#cjOutD3").val(),
            OutMoterRpm: $("#OutMoterRpm").val(),
            inC1 : $("#inC1").val(),
            inC2: $("#inC2").val(),
            inD3: $("#inD3").val(),
            inMoterRpm : $("#inMoterRpm").val(),
            toSpeed: $("#toSpeed").val(),
            waterTemp: $("#waterTemp").val(),

        }
        $.ajax({
            type : "POST",
            url:"/api/defective/"+id,
            //url: 'http//:localhost:8000/api',
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("수정완료")
            location.href("/")



        }).fail(function (err){
            console.log(err)
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    },
    insert:function (){
        let data = {

            meanTemp : $("#Temp").val(),
            defective: $("#defective").val(),
            label: $("#label").val(),
            cjC1F: $("#cjC1F").val(),
            cjC2F : $("#cjC2F").val(),
            cjD3F : $("#cjD3F").val(),
            cjC1S: $("#cjC1S").val(),
            cjC2S: $("#cjC2S").val(),
            cjD3S: $("#cjD3S").val(),
            cjMoterRpm : $("#cjMoterRpm").val(),
            cjOutC1 : $("#cjOutC1").val(),
            cjOutC2: $("#cjOutC2").val(),
            cjOutD3: $("#cjOutD3").val(),
            OutMoterRpm: $("#OutMoterRpm").val(),
            inC1 : $("#inC1").val(),
            inC2: $("#inC2").val(),
            inD3: $("#inD3").val(),
            inMoterRpm : $("#inMoterRpm").val(),
            toSpeed: $("#toSpeed").val(),
            waterTemp: $("#waterTemp").val(),

        }
        $.ajax({
            type : "POST",
            url:"/api/defective/insert",
            data: JSON.stringify(data),
            contentType :"application/json; charset=utf-8",
            dataType :"json"
        }).done(function (res){
            alert("추가완료")
            location.href("/")



        }).fail(function (err){
            console.log(err)
            alert(JSON.stringify(err))
        }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청

    }

}
$(document).on("focusout", "input[name=cjOutC1]", function() {
    var val= $(this).val();


    if(val > 195 || val < 185) {
        alert("185~195 범위로 입력해 주십시오.");
        $(this).val(190);
    }
});

$(document).on("focusout", "input[name=cjOutC2]", function() {
    var val= $(this).val();


    if(val > 195 || val < 185) {
        alert("185~195 범위로 입력해 주십시오.");
        $(this).val(190);
    }
});

$(document).on("focusout", "input[name=cjOutD3]", function() {
    var val= $(this).val();


    if(val > 205 || val < 195) {
        alert("195~205 범위로 입력해 주십시오.");
        $(this).val(200);
    }
});

$(document).on("focusout", "input[name=inD3]", function() {
    var val= $(this).val();


    if(val > 205 || val < 195) {
        alert("195~205 범위로 입력해 주십시오.");
        $(this).val(200);
    }
});


index.init();



