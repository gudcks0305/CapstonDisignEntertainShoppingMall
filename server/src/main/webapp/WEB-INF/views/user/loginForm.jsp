
<%@ include file="../Layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
  @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap");
  * {margin: 0; padding: 0; box-sizing: border-box;}
  body {
    font-family: 'Noto Sans KR', sans-serif;
    display:flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url("") no-repeat center;
    background-size: cover;
  }
  body::before {
    content: "";
    position: absolute; z-index: 2;
    top: 0; right: 0; bottom: 0; Left: 0;
    background-color: rgba(255, 255, 255);
  }
  .Login-from {
    position:relative ; z-index: 2;
    left: 50%; margin-left: -200px;
  }

  .Login-from h1 {
    font-size: 32px; color: rgb(0, 0, 0);
    text-align: center;
    margin-bottom: 60px;
  }
  .int-area {width: 400px; position: relative;
    margin-top: 20px;
  }
  .int-area:first-child {margin-top: 0;}
  .int-area input{
    width: 100%;
    padding: 20px 10px 10px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid rgb(224, 224, 224);
    font-size: 18px; color: #fff;
    outline: none;
    border-bottom: 1px solid rgba(161, 161, 161, 0.685);
    font-size: 18px; color: #fff;
    outline: none;
  }
  .int-area label {
    position: absolute; left: 10PX; top: 15px;
    transition: all .5 ease;
  }
  .int-area input:focus + label,
  .int-area input:valid + Label {
    top: -2px;
    font-size: 13px; color: #ffffff;
  }
  .btn-area {margin-top: 30px;}

  .btn-area button {
    width: 100%; height: 50px;
    background: #166cea;
    coLor: #fff;
    font-size: 20px;
    border: none;
    border-radius: 25px;
  }

  .caption {
    margin-top: 20px;
    text-align: center;
  }
  .caption a {
    font-size: 15px; color: #999;
    text-decoration: none;
  }

</style>

<body>
<section class="Login-from">
  <h1>LOGO DESIGN</h1>
  <form  action="/auth/loginProc" method="POST" class="was-validated">
    <div class="int-area">
      <input style="color: black" type="text"  id="username"  name="username"
             autocomplete="off" placeholder="USER NAME" required>
      <Label for="username">USER NAME</Label>
    </div>
    <div class="int-area">
      <input style="color: black" type="password" id="password"  name="password"
             autocomplete="off" placeholder="PASSWORD" required>
      <Label for="password">PASSWORD</Label>
    </div>
    <div class="btn-area">
      <button id="btn-login" class="btn btn-primary">로그인</button>
    </div>
  </form>
  <div class="caption">
    <a href="">Forgot Password?</a>
  </div>
</section>
</body>

<%@ include file="../Layout/footer.jsp"%>


