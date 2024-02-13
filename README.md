## 두번째 프로젝트
## Movie Box

### 기간 22.12.20 ~ 22.12.24
#### 개인 프로젝트, 1인
#### 주제 = "영화 예매 사이트"
#### 개발 환경 - java & spring / oracle & mybatis / jsp
#### 주요 기능 
영화 조회 및 상세보기 / 영화(영화,날짜,좌석) 예매,취소 / 스토어 구매,찜,취소 / 이벤트, 공지사항, 게시판
</br></br></br></br></br>
## 과정 및 후기
- **두번째 프로젝트**라 핵심 **mvc 패턴**도 익숙해졌고 **jsp와 mybatis**를 사용함에서 이해도도 크게 늘었음.
- **ajax를 사용한 비동기 송수신**을 최대한 이용하여 (영화 시간표, 좌석예매 등) 활용능력을 키우려 노력함.
- 생각보다 **DB연동에서 많이 오류**가 발생했는데, 이전 학원에서 진행한 프로젝트는 어느정도 커리큘럼에서 사용한 틀을 그대로 썼어서 이 차이때문에 시간이 꽤 걸렸고, 덕분에 **mybatis와 jsp, mvc에 대한 지식**과 자신감을 얻을 수 있었음.
- 첫 개인 프로젝트 였음에도 빠르게 잘 마무리됐고, **생각한 것을 그대로 구현해보며 큰 성취감**을 느꼈음.
</br></br> </br></br> </br>

### ERD
<img src="/picture/ERD2.jpg">
    

</br></br> 
 
  





#### 상세 
### 메인 페이지
슬라이드와 하단 포스터로 현재 상영중인 영화들중 몇가지를
보거나 이동할 수 있다.
<img src="/picture/pic1.jpg">
</br></br>

### 로그인 페이지
session을 이용했으며 추후에 jwt을 이용한 인증/인가를 공부하여 추가할예정
<img src="/picture/signIn.jpg"></br></br>

### 영화 페이지
상영중인 영화들 목록이 나열돼있으며 클릭시 상세정보로 이동하거나 예매하기 가능
<img src="/picture/movie.jpg"></br></br>

### 영화 상세보기 페이지
영화 페이지에서 클릭시 이동하는 상세화면
<img src="/picture/movieDetail.jpg"></br></br>

### 예매 페이지
영화선택 - 날짜선택 시 해당정보에맞는 상영시간/상영관이 나오며
선택 완료후 좌석 선택버튼으로 다음페이지로 넘어갈수있음
<img src="/picture/reserve.jpg"></br></br>

### 좌석 선택 페이지
예약 가능한 좌석만 select에 등장하며 검은색 좌석은 예약불가, 빨간색 좌석은 예약 가능.
<img src="/picture/reserveDetail.jpg"></br></br>

### 예매 완료 페이지
예매 완류후 예매정보들을 보여주는 페이지이다. 버튼을 통해 홈페이지와 예매내역 페이지로 이동이가능.
<img src="/picture/reserveResult.jpg"></br></br>

### 스토어 페이지
스낵/음료/상품권 카테고리로 나뉘어있으며 구매하기, 장바구니에 담기 가 가능하다.
<img src="/picture/store.jpg"></br></br>

### 이벤트 페이지
현재 진행중인 이벤트들을 볼 수 있으며 클릭시 상세화면으로 이동가능
<img src="/picture/event.jpg"></br></br>

### 이벤트 상세보기 페이지
<img src="/picture/eventDetail.jpg"></br></br>

### 고객센터 페이지
자주묻는 질문 / 1:1 문의 / 1:1 문의 내역을 볼수 있다.
<img src="/picture/CS.jpg"></br></br>

### 마이페이지
회원 정보를 볼수있으며 비밀번호 변경 가능
<img src="/picture/myPage.jpg"></br></br>

### 예매 내역 페이지
회원이 예매한 영화들의 내역을 볼 수 있다.
<img src="/picture/bookList.jpg"></br></br>

### 상품 페이지
구매한 상품들의 정보와 일렬번호를 알 수 있다.
<img src="/picture/myStore.jpg"></br></br>

### 장바구니 페이지
장바구니에 넣어놓은 상품들을 볼 수 있으며 구매하거나 장바구니 삭제를 할 수 있다.
<img src="/picture/basket.jpg">
