<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="src/css/joinForm.css">
<title>Join Insta</title>
</head>
<body>
  <div class="joinForm">
    <div class="insta-logo">
      <span class="insta-logo__title">Instagram</span>
      <p class="insta-logo__subtitle">친구들의 사진과 동영상을 보려면 가입하세요</p>
    </div>
    <button class="instead-facebook">
      <i class="fab fa-facebook-square"></i>페이스북으로 로그인
    </button>
    <form action="joinProForm.mem" method="post" name="joinInfo" class="userInfo">
      <input type="text" class="peNumber" name="peNumber" placeholder="휴대폰 번호 또는 이메일 주소" required />
      <input type="text" class="user_name" name="username" placeholder="성명" />
      <input type="text" class="user_nickname" name="nickname" placeholder="사용자 이름">
      <input type="password" class="user_password" name="user_password" placeholder="비밀번호">
      <button class="joinBtn">가입</button>
      <span id="warning">가입하면 Instagram의 약관, 데이터 정책 및 쿠키 정책에 동의하게 됩니다</span>
    </form>
  </div>
  <div class="goto-join">
    <span>계정이 있으신가요? <a href="home.html" class="goto-login__link">로그인</a></span>
  </div>
  <div class="download-app">
    <div class="ask-download">앱을 다운로드하세요.</div>
    <div class="store">
      <a href="#">
        <img src="#" alt="appleStore" class="appleStore">
      </a>
      <a href="#">
        <img src="#" alt="googlePlay" class="googlePlay">
      </a>
    </div>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="src/js/joinBtn.js"></script>
</body>
</html>