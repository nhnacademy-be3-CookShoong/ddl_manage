# ddl_manage
쿡슝 ERD는 0.0.1version부터 0.2.8version까지 업데이트 되었습니다.

## 0.0.1 version
쿡슝 배달 서비스 매장, 회원, 쿠폰, 메뉴에 대한 ERD 작성

![0 0 1 version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/eccb91ad-d4e0-4e1c-bf94-ca68eb2a8a58)


## 0.0.2 version
쿡슝 배달 서비스의 메뉴테이블 옵션과 서브메뉴를 고려하여 수정, 주문, 리뷰, 포인트, 환불테이블 추가하여 작성

![0 0 2 version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/2ef0272a-aa2b-411d-89c7-30e791e4db1b)


## 0.0.3 version
리뷰테이블에서 리뷰 답변 테이블 추가, 테이블명, 세부적인 필드 컨벤션 정해서 수정.

![0 0 3version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/e16901c4-9505-4196-84fe-4ba60bac3369)


## 0.0.4 version
배달 API는 별도의 시스템이기때문에 테이블 분리함. 주문번호, 쿠폰번호...등 UUID 이용하는 곳은 Binary(16)으로 변경

![0 0 4 version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/53060e50-0932-48d4-bc64-0225540432db)


## 0.1.1 version
포인트 테이블 ISA관계로 테이블 구조 나눔. 

![0 1 1version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/4589c25d-8e51-41d7-9259-da2d30092157)


## 0.2.1 version
스키마 3가지 환경으로 분리하였고(test, 개발, 배포), 필드별 null, 필드명 재설정 등에 의한 수정. 

![0 2 1 version](https://github.com/nhnacademy-be3-CookShoong/ddl_manage/assets/66362713/738cbbe3-848d-47bd-ab16-ef174326a66d)


