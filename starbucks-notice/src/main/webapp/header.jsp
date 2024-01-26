<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.lang.Exception, java.sql.SQLException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Starbucks Korea Coffee</title>
  <!-- 파비콘 => png는 무거워서 아이콘은 ico 파일로 가볍게 사용 가능 -->
  <link rel="icon" href="./images/favicon.ico" />
  
  <!-- reset.css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
  
  <!-- google font & google material icon -->
  <!-- Google 나눔고딕 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
  
  <!-- Google material 아이콘 -->
  <!-- 아이콘을 이미지가 아닌, 폰트처럼 사용 가능함 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

  <link rel="stylesheet" href="./css/main.css" />
  
  <!-- defer속성은 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행됨을 명시하며, 
  		 이 속성은 <script> 요소가 외부 스크립트를 참조하는 경우에만 사용 가능 -->
  <script defer src="./js/jquery-3.7.1.min.js"></script>
  
  <!-- lodash 라이브러리 -->
  <script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
  
  <!-- gsap 라이브러리 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
  <!-- gsap_scrolltoplugin -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"></script>
  
  <!-- swiper 라이브러리 -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>

  <script defer src="./js/main.js"></script>
</head>

<body>
  <!-- <header> -->
    <div class="inner">
      <!-- 로고 이미지 부분 -->
      <a href="./index.jsp" class="logo">
        <img src="./images/starbucks_logo.png" alt="starbucks_logo" />
      </a>

      <!-- 위에 있는 서브 메뉴 부분 -->
      <div class="sub-menu">
        <ul class="menu">
          <li>
            <a href="#">Sign In</a>
          </li>
          <li>
            <a href="#">My Starbucks</a>
          </li>
          <li>
            <a href="#">Customer & Service & Ideas</a>
          </li>
          <li>
            <a href="#">Find a Store</a>
          </li>
        </ul>
        <div class="search">
          <input type="text" />
          <span class="material-symbols-outlined">Search</span>
        </div>
      </div>

      <!-- 밑에 있는 메인 메뉴 부분 -->
      <ul class="main-menu">
        <li class="item">
          <div class="item__name">COFFEE</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>커피</h4>
                  <ul>
                    <li>스타벅스 원두</li>
                    <li>스타벅스 비아</li>
                    <li>스타벅스 오리가미</li>
                  </ul>
                </li>
                <li>
                  <h4>에스프레소 음료</h4>
                  <ul>
                    <li>도피오</li>
                    <li>에스프레소 마키아또</li>
                    <li>아메리카노</li>
                    <li>마키아또</li>
                    <li>카푸치노</li>
                    <li>라떼</li>
                    <li>모카</li>
                    <li>리스트레또 비안코</li>
                  </ul>
                </li>
                <li>
                  <h4>커피 이야기</h4>
                  <ul>
                    <li>스타벅스 로스트 스팩트럼</li>
                    <li>최상의 아라비카 원두</li>
                    <li>한 잔의 커피가 완성되기까지</li>
                    <li>클로버® 커피 추출 시스템</li>
                  </ul>
                </li>
                <li>
                  <h4>최상의 커피를 즐기는 법</h4>
                  <ul>
                    <li>커피 프레스</li>
                    <li>푸어 오버</li>
                    <li>아이스 푸어 오버</li>
                    <li>커피 메이커</li>
                    <li>리저브를 매장에서 다양하게 즐기는 법</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>나와 어울리는 커피 찾기</h4>
                <p>스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
                <h4>최상의 커피를 즐기는 법</h4>
                <p>여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">MENU</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>음료</h4>
                  <ul>
                    <li>콜드 브루</li>
                    <li>브루드 커피</li>
                    <li>에스프레소</li>
                    <li>프라푸치노</li>
                    <li>블렌디드 음료</li>
                    <li>스타벅스 피지오</li>
                    <li>티(티바나)</li>
                    <li>기타 제조 음료</li>
                    <li>스타벅스 주스(병음료)</li>
                  </ul>
                </li>
                <li>
                  <h4>푸드</h4>
                  <ul>
                    <li>베이커리</li>
                    <li>케익</li>
                    <li>샌드위치 & 샐러드</li>
                    <li>따뜻한 푸드</li>
                    <li>과일 & 요거트</li>
                    <li>스낵 & 미니 디저트</li>
                    <li>아이스크림</li>
                  </ul>
                </li>
                <li>
                  <h4>상품</h4>
                  <ul>
                    <li>머그</li>
                    <li>글라스</li>
                    <li>플라스틱 텀블러</li>
                    <li>스테인리스 텀블러</li>
                    <li>보온병</li>
                    <li>액세서리</li>
                    <li>커피 용품</li>
                    <li>패키지 티(티바나)</li>
                  </ul>
                </li>
                <li>
                  <h4>카드</h4>
                  <ul>
                    <li>실물카드</li>
                    <li>e-Gift 카드</li>
                  </ul>
                </li>
                <li>
                  <h4>메뉴 이야기</h4>
                  <ul>
                    <li>콜드 브루</li>
                    <li>스타벅스 티바나</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>스타벅스 티바나</h4>
                <p>다양한 찻잎과 향신료 등 개성있는 재료로 새로운 맛과 향의 티를 선보입니다.</p>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">STORE</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>매장 찾기</h4>
                  <ul>
                    <li>퀵 검색</li>
                    <li>지역 검색</li>
                    <li>My 매장</li>
                  </ul>
                </li>
                <li>
                  <h4>매장 이야기</h4>
                  <ul>
                    <li>청담스타</li>
                    <li>티바나 인스파이어드 매장</li>
                    <li>파미에파크</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>매장 찾기</h4>
                <p>보다 빠르게 매장을 찾아보세요.</p>
                <h4>청담스타</h4>
                <p>스타벅스 1,000호점인 청담스타점을 만나보세요.</p>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">RESPONSIBILITY</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>지역 사회 참여 활동</h4>
                  <ul>
                    <li>회망배달 캠페인</li>
                    <li>재능기부 카페 소식</li>
                    <li>커뮤니티 스토어</li>
                    <li>청년인재 양성</li>
                    <li>우리 농산물 사랑 캠페인</li>
                    <li>우리 문화 지키기</li>
                  </ul>
                </li>
                <li>
                  <h4>환경보호 활동</h4>
                  <ul>
                    <li>환경 발자국 줄이기</li>
                    <li>일회용 컵 없는 매장</li>
                    <li>커피 원두 재활용</li>
                  </ul>
                </li>
                <li>
                  <h4>윤리 구매</h4>
                  <ul>
                    <li>윤리적 원두 구매</li>
                    <li>공정무역 인증</li>
                    <li>커피 농가 지원 활동</li>
                  </ul>
                </li>
                <li>
                  <h4>글로벌 사회 공헌</h4>
                  <ul>
                    <li>윤리경영 보고서</li>
                    <li>스타벅스 재단</li>
                    <li>지구촌 봉사의 달</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>커피원두 재활용</h4>
                <p>스타벅스 커피 원두를 재활용 해보세요.</p>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">MY STARBUCKS REWARDS</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>마이 스타벅스 리워드</h4>
                  <ul>
                    <li>마이 스타벅스 리워드 소개</li>
                    <li>등급 및 혜택</li>
                    <li>스타벅스 별</li>
                    <li>자주하는 질문</li>
                  </ul>
                </li>
                <li>
                  <h4>스타벅스 카드</h4>
                  <ul>
                    <li>스타벅스 카드 소개</li>
                    <li>스타벅스 카드 갤러리</li>
                    <li>등록 및 조회</li>
                    <li>충전 및 이용안내</li>
                    <li>분실신고/환불신청</li>
                    <li>자주하는 질문</li>
                  </ul>
                </li>
                <li>
                  <h4>스타벅스 카드 e-Gift</h4>
                  <ul>
                    <li>스타벅스 카드 e-Gift 소개</li>
                    <li>이용안내</li>
                    <li>선물하기</li>
                    <li>자주하는 질문</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>스타벅스 카드 등록하기</h4>
                <p>카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>
              </div>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">WHAT'S NEW</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>프로모션 & 이벤트</h4>
                  <ul>
                    <li>전체</li>
                    <li>스타벅스 카드</li>
                    <li>마이 스타벅스 리워드</li>
                    <li>온라인</li>
                    <li>2017 스타벅스 플래너</li>
                  </ul>
                </li>
                <li>
                  <h4>새소식</h4>
                  <ul>
                    <li>전체</li>
                    <li>상품 출시</li>
                    <li>스타벅스의 문화</li>
                    <li>스타벅스 사회공헌</li>
                    <li>스타벅스 카드출시</li>
                  </ul>
                </li>
                <li>
                  <h4>매장별 이벤트</h4>
                  <ul>
                    <li>일반 매장</li>
                    <li>신규 매장</li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="contents__texture">
              <div class="inner">
                <h4>매장별 이벤트</h4>
                <p>스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>
                <h4>소셜 스타벅스</h4>
                <p>다양한 스타벅스 SNS 채널을 통해 스타벅스를 만나보세요!</p>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>

</body>
</html>