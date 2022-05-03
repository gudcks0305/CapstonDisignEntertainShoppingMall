
const getJSON = function (url,callback){
    const xhr = new XMLHttpRequest();
    xhr.open('GET',url , true);
    xhr.responseType = 'json';
    xhr.onload = function (){
        const status = xhr.status;
        if(status == 200){
            callback(null, xhr.response);
        }
        else {
            callback(status, xhr.response);
        }
    };
    xhr.send();
}

getJSON('https://api.openweathermap.org/data/2.5/weather?q=seoul&appid=6a1cfeac71998c813782b3553bafd174&units=metric',

    function (err,data){
        if (err !== null) {
            alert("예상치 못한 오류가 발생했습니다. " + err);
        } else {
            loadWeather(data);
        }
        console.log(data.main.temp)
    })
function loadWeather(data){
    let date = new Date();
    let month = date.getMonth() + 1;
    let day = date.getDate();
    let hours = date.getHours();
    let minutes = date.getMinutes();

    document.getElementsByClassName('heading')[0].innerHTML = `현재 시간 : ${month}/${day} &nbsp  ${hours} : ${minutes}`;
    document.getElementsByClassName('temp-value')[0].innerHTML = data.main.temp;
    document.getElementsByClassName('temp')[1].innerHTML = data.main.temp_min;
    document.getElementsByClassName('temp')[2].innerHTML = data.main.temp_max;
    document.getElementById('meanTemp').value = data.main.temp;



}
