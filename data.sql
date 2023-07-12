
INSERT INTO  account_status (status_code, description) VALUES ('ACTIVE', '활성');
INSERT INTO  account_status (status_code, description) VALUES ('DORMANCY', '휴면');
INSERT INTO  account_status (status_code, description) VALUES ('WITHDRAWAL', '탈퇴');

INSERT INTO  authorities (authority_code, description) VALUES ('ADMIN', '시스템관리자');
INSERT INTO  authorities (authority_code, description) VALUES ('BUSINESS', '사업자회원');
INSERT INTO  authorities (authority_code, description) VALUES ('CUSTOMER', '일반회원');

INSERT INTO  bank_types (bank_type_code, description) VALUES ('HANA', '하나은행');
INSERT INTO  bank_types (bank_type_code, description) VALUES ('IBK', 'IBK기업은행');
INSERT INTO  bank_types (bank_type_code, description) VALUES ('KB', '국민은행');
INSERT INTO  bank_types (bank_type_code, description) VALUES ('SHIN', '신한은행');


INSERT INTO  day_types (day_code, description) VALUES ('FRI', '금요일');
INSERT INTO  day_types (day_code, description) VALUES ('MON', '월요일');
INSERT INTO  day_types (day_code, description) VALUES ('SAT', '토요일');
INSERT INTO  day_types (day_code, description) VALUES ('SUN', '일요일');
INSERT INTO  day_types (day_code, description) VALUES ('THU', '목요일');
INSERT INTO  day_types (day_code, description) VALUES ('TUE', '화요일');
INSERT INTO  day_types (day_code, description) VALUES ('WED', '수요일');

INSERT INTO  ranks (rank_code, name) VALUES ('LEVEL_1', '프랜드');
INSERT INTO  ranks (rank_code, name) VALUES ('LEVEL_2', '패밀리');
INSERT INTO  ranks (rank_code, name) VALUES ('LEVEL_3', '마스터');
INSERT INTO  ranks (rank_code, name) VALUES ('LEVEL_4', 'VIP마스터');

INSERT INTO  store_categories (category_code, description) VALUES ('BOX', '도시락');
INSERT INTO  store_categories (category_code, description) VALUES ('BUN', '분식');
INSERT INTO  store_categories (category_code, description) VALUES ('CHK', '치킨');
INSERT INTO  store_categories (category_code, description) VALUES ('CHN', '중식');
INSERT INTO  store_categories (category_code, description) VALUES ('DES', '디저트');
INSERT INTO  store_categories (category_code, description) VALUES ('JPN', '일식');
INSERT INTO  store_categories (category_code, description) VALUES ('KOR', '한식');
INSERT INTO  store_categories (category_code, description) VALUES ('NIG', '야식');
INSERT INTO  store_categories (category_code, description) VALUES ('PIZ', '피자');
INSERT INTO  store_categories (category_code, description) VALUES ('POR', '족발과 보쌈');


INSERT INTO  store_status (store_status_code, description) VALUES ('CLOSE', '준비중');
INSERT INTO  store_status (store_status_code, description) VALUES ('OPEN', '영업중');
INSERT INTO  store_status (store_status_code, description) VALUES ('OUTED', '폐업');

INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (1, '광주', '서석동', 23.2323000, 23.2323200);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (2, '광주', '봉선동', 23.0000000, 23.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (3, '광주', '진월동', 23.2222222, 22.2222222);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (4, '광주', '양산동', 22.2212100, 21.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (5, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000, 32.0100000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (12, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000, 32.0100000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (21, '광주 동구 조선대길 65', '103동', 12.0000000, 12.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (22, '전북 남원시 네마실1길 7', '3', 23.4000000, 23.5000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (23, '서울 은평구 갈현로33길 1', '33', 33.0000000, 33.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (24, '서울 강동구 천중로44길 7', '44', 44.0000000, 44.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (25, '서울 강북구 삼각산로22길 2', '22', 22.0000000, 22.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (26, '서울 강동구 강동대로55길 10', '55', 55.0000000, 55.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (27, '서울 양천구 가로공원로56길 1', '66', 66.0000000, 66.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (28, '서울 강동구 양재대로123길 7', '123', 123.0000000, 123.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (29, '서울 강동구 천중로44길 7', '44', 44.0000000, 44.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (30, '서울 강북구 인수봉로44길 2', '44', 44.0000000, 44.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (31, '경기 성남시 중원구 산성대로444번길 3-1', '444', 44.0000000, 44.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (32, '서울 강남구 논현로111길 3', '111', 11.0000000, 11.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (34, '경기 성남시 중원구 산성대로444번길 3-1', '44', 44.0000000, 444.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (35, '서울 강남구 도산대로12길 14', '134', 33.0000000, 33.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (36, '서울 강북구 4.19로12길 5', '12', 12.0000000, 12.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (39, '서울 강동구 천중로44길 7', '44', 44.0000000, 44.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (41, '경기 성남시 중원구 산성대로444번길 5', '444', 444.0000000, 444.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (42, '서울 강북구 4.19로23길 6', '23', 23.0000000, 23.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (43, '서울 송파구 가락로15길 1', '15', 15.0000000, 15.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (44, '서울 영등포구 가마산로31길 6', '31', 31.0000000, 31.0000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (45, '서울 은평구 갈현로33길 1', '33333', 3.0000000, 3.0000000);

INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (1, 'LEVEL_2', 'ACTIVE', 'CUSTOMER', 'user1', '12345', '윤유저', '미스터나유저', 'user1@gmail.com', '1999-07-07', '01088008282', '2023-07-05 14:58:45');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (2, 'LEVEL_4', 'DORMANCY', 'CUSTOMER', 'user2', '12345', '박휴면', '얘들이말을안들어', 'user2@gmail.com', '1997-03-10', '01092020018', '2023-05-05 15:09:19');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (3, 'LEVEL_1', 'WITHDRAWAL', 'CUSTOMER', 'user3', '12345', '정탈퇴', '나이러면탈주', 'user3@naver.com', '2002-07-01', '01092430192', '2021-06-05 15:13:17');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (4, 'LEVEL_3', 'ACTIVE', 'BUSINESS', 'user4', '12345', '유사장', '스틸마이넘버원', 'user4@naver.com', '1997-07-30', '01023451234', '2023-06-30 15:14:43');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (5, 'LEVEL_4', 'ACTIVE', 'ADMIN', 'user5', '12345', '추관리', '추추추추추', 'user5@gmail.com', '1998-07-01', '01056472039', '2023-07-05 15:17:38');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (6, 'LEVEL_4', 'ACTIVE', 'BUSINESS', 'user6', '12345', '김사장', '말비묵', 'user6@gmail.com', '1995-07-04', '01023123120', '2023-07-04 15:57:10');

INSERT INTO  account_address (account_id, address_id, alias) VALUES (1, 1, '우리집');
INSERT INTO  account_address (account_id, address_id, alias) VALUES (4, 2, '우리가게');
INSERT INTO  account_address (account_id, address_id, alias) VALUES (6, 3, '가게주소');

INSERT INTO  oauth_type (oauth_type_id, provider) VALUES (1, '페이코');

INSERT INTO  oauth_accounts (account_id, oauth_type_id, account_code) VALUES (1, 1, 'adfadfadsfasdf');

INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, image, bank_account_number) VALUES (1, null, 2, 4, 'KB', 'OPEN', 'sdfsdfadf', '123456789', '유사장', '2023-06-01', '보쌈맛있는집', '0502234123', 1.1, '블라블라블라', 'adfadf', '110423032123');
INSERT INTO merchants(name) VALUES ('네네치킨');
INSERT INTO merchants(name) VALUES ('도미노피자');
INSERT INTO merchants(name) VALUES ('토마토피자');
INSERT INTO merchants(name) VALUES ('원할머니보쌈');
INSERT INTO merchants(name) VALUES ('비비큐치킨');
INSERT INTO merchants(name) VALUES ('디저트39');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, image, bank_account_number) VALUES (2, 1, 3, 4, 'KB', 'CLOSE', 'aldskfjal', '123123123', '유사장', '2022-07-01', '네네치킨 진월점', '0402031203', 1.0, '브리마얼미아러', 'asdfasdf', '110222123012');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, image, bank_account_number) VALUES (3, null, 4, 6, 'SHIN', 'OPEN', 'asdfadfadf', '123123111', '김사장', '2022-11-03', '초코하임드링크
', '0100010210', 0.5, '프리미엄 원두만', 'asdfasdf', '112301230123');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, image, bank_account_number) VALUES (4, 1, 5, 4, 'KB', 'CLOSE', 'adklfjasldkjfas', '111122221', '김악덕', '1999-10-10', '네네치킨 봉선점', '01012341234', 2.0, null, null, '111000022213');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, image, bank_account_number) VALUES (10, 1, 21, 1, 'KB', 'CLOSE', 'KakaoTalk_Photo_2023-06-02-16-08-43.jpeg', '12-22', '네네', '2023-07-09', '네네치킨 - 조선대점', '01028221864', 0.0, '네네치킨 조선대점입니다.', null, '12-22');

INSERT INTO  stores_has_categories (store_id, category_code) VALUES (2, 'CHK');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (3, 'DES');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (1, 'NIG');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (2, 'NIG');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (1, 'POR');

INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (1, 1, 'MON', '10:00:00', '18:00:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (2, 1, 'MON', '20:00:00', '28:00:00');
