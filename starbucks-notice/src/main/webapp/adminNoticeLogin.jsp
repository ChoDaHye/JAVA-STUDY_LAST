<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- DB와 연결 -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.lang.Exception, java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Starbucks Korea Coffee</title>
  <!-- 파비콘 -->
  <link rel="icon" href="./images/favicon.ico" />
  <!-- reset.css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
  <!-- google font & google material icon -->
  <!-- Google 나눔고딕 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
  <!-- Google 매트리얼 아이콘 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

  <link rel="stylesheet" href="./css/login.css" />
  
  <script defer src="./js/jquery-3.7.1.min.js"></script>
  <!-- lodash -->
  <script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
  <!-- gsap -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
  <!-- gsap_scrolltoplugin -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"></script>
  <!-- swiper -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>

  <script defer src="./js/login.js"></script>
</head>

<body>
   <header>
      <!-- 헤더 영역 공통 부분 -->
      <%@ include file ="header.jsp" %>
   </header>

 <section class ="signin">
    <h1>로그인</h1>
    <div class ="signin_form">
    <h2><strong>Welcom! </strong>스타벅스에 오신 것을 환영합니다.</h2>
     <form>
        <input type ="text" placeholder="아이디를 입력해 주세요." />
        <input type ="password" placeholder="비밀번호를 입력해 주세요." />
      
        <input type="submit" value ="로그인" /> 
        <p>
        *타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.<br /><br />
        * 스타벅스 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.
        </p>
     </form>
     <div class= "actions">
        <a href ="javacript: void(0)">회원가입</a>
        <a href ="javacript: void(0)">아이디 찾기</a>
        <a href ="javacript: void(0)">비밀번호 찾기</a>
     </div>
  </div>
 </section>
   
   

</body>
</html>