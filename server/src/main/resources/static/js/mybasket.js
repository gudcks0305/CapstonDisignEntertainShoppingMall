let mybasket = {
    totalCount: 0,
    totalPrice: 0,
//체크한 장바구니 상품 비우기
    delCheckedItem: function(){
        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
            item.parentElement.parentElement.parentElement.remove();
        });
//AJAX 서버 업데이트 전송

//전송 처리 결과가 성공이면
        this.reCalc();
        this.updateUI();
    },
//장바구니 전체 비우기
    delAllItem: function(){
        function deleteById(basketId) {
            $.ajax({
                type : "DELETE",
                url:"/api/basket/"+basketId,
                dataType :"json"
            }).done(function (res){
            }).fail(function (err){
                alert(JSON.stringify(err))
            }); // 통신을 이용해서 3개의 데이터를 제이슨으로 변경하여 insert요청
        }

        document.querySelectorAll('.row.data').forEach(function (item) {
            item.remove();
            let basketId = item.valueOf().id;
            deleteById(basketId);
        });
//AJAX 서버 업데이트 전송

//전송 처리 결과가 성공이면
        this.totalCount = 0;
        this.totalPrice = 0;
        this.reCalc();
        this.updateUI();
    },
//재계산
    reCalc: function(){
        this.totalCount = 0;
        this.totalPrice = 0;
        document.querySelectorAll(".p_num").forEach(function (item) {
            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
                var count = parseInt(item.getAttribute('value'));
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
//화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    },
//개별 수량 변경
    changePNum: function (pos) {

        var item = document.querySelector('input[name=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;

        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
//AJAX 업데이트 전송

//전송 처리 결과가 성공이면
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
        let basketId = event.target.parentElement.parentElement.parentElement.valueOf().id;
        this.deleteById(basketId);

    },
    deleteById:function (basketId){

        console.log(basketId)
        $.ajax({
            type : "DELETE",
            url:"/api/basket/"+basketId,
            dataType :"json"
        }).done(function (res){
            location.href="/basket/myBasket";


        }).fail(function (err){
            alert(JSON.stringify(err))
        }).bind(this);

    }
}

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};