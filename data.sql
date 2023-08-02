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

INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (1, '광주', '서석동', 23.2323000000000, 23.2323200000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (2, '광주', '봉선동', 23.0000000000000, 23.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (3, '광주', '진월동', 23.2222222000000, 22.2222222000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (4, '광주', '양산동', 22.2212100000000, 21.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (5, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000000000, 32.0100000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (12, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000000000, 32.0100000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (21, '광주 동구 조선대길 65', '103동', 12.0000000000000, 12.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (22, '전북 남원시 네마실1길 7', '3', 23.4000000000000, 23.5000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (23, '서울 은평구 갈현로33길 1', '33', 33.0000000000000, 33.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (24, '서울 강동구 천중로44길 7', '44', 44.0000000000000, 44.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (25, '서울 강북구 삼각산로22길 2', '22', 22.0000000000000, 22.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (26, '서울 강동구 강동대로55길 10', '55', 55.0000000000000, 55.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (27, '서울 양천구 가로공원로56길 1', '66', 66.0000000000000, 66.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (28, '서울 강동구 양재대로123길 7', '123', 123.0000000000000, 123.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (29, '서울 강동구 천중로44길 7', '44', 44.0000000000000, 44.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (30, '서울 강북구 인수봉로44길 2', '44', 44.0000000000000, 44.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (31, '경기 성남시 중원구 산성대로444번길 3-1', '444', 44.0000000000000, 44.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (32, '서울 강남구 논현로111길 3', '111', 11.0000000000000, 11.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (34, '경기 성남시 중원구 산성대로444번길 3-1', '44', 44.0000000000000, 444.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (35, '서울 강남구 도산대로12길 14', '134', 33.0000000000000, 33.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (36, '서울 강북구 4.19로12길 5', '12', 12.0000000000000, 12.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (39, '서울 강동구 천중로44길 7', '44', 44.0000000000000, 44.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (41, '경기 성남시 중원구 산성대로444번길 5', '444', 444.0000000000000, 444.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (42, '서울 강북구 4.19로23길 6', '23', 23.0000000000000, 23.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (43, '서울 송파구 가락로15길 1', '15', 15.0000000000000, 15.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (44, '서울 영등포구 가마산로31길 6', '31', 31.0000000000000, 31.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (45, '서울 은평구 갈현로33길 1', '33333', 3.0000000000000, 3.0000000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (46, '서울 강남구 논현로123길 4-1', '', 37.5121205563604, 127.0309660035760);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (47, '서울 금천구 두산로 1', '바다다', 37.4708366866516, 126.8880262469970);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (48, '서울 관악구 난우길 2', '땅이다', 37.4732085813656, 126.9191495625120);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (49, '광주 동구 서석동 313', '바다다', 35.1423526805043, 126.9299899686431);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (50, '부산 해운대구 우동 1417-1', 'ass', 35.1646130910564, 129.1374098540638);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (51, '경기 평택시 오성면 양교리 866-1', '성공', 37.0293407813746, 126.9569778686432);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (52, '광주 동구 서석동 375', '성공2', 35.1423549223073, 126.9339842689427);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (53, '광주 동구 서석동 300', '104동 1705', 35.1404419959616, 126.9303427438394);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (54, '울산 중구 만남의길 5', 'goof', 35.5495654421416, 129.2919002097130);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (55, '서울 강남구 논현로123길 4-1', '33333', 37.5121205563604, 127.0309660035760);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (56, '광주 동구 조선대5길 55', '조선대학교 IT 융합대학', 32.4423242000000, 42.2323220000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (57, '광주 동구 조선대5길 55', '조선대학교 IT 융합대학', 32.4423242000000, 42.2323220000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (58, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 32.4423242000000, 42.2323220000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (62, '서울 서초구 나루터로 15', '바다다', 37.5171300437436, 127.0113903881520);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (63, '부산 남구 8부두로 1', '', 35.1187232984154, 129.0799213626970);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (64, '경기 성남시 분당구 대왕판교로645번길 16', 'NHN PAYCO', 37.4009599166300, 127.1041374491310);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (65, '광주 동구 조선대5길 65', '1층', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (66, '경기 성남시 분당구 대왕판교로645번길 16', '집이다', 37.4009599166300, 127.1041374491310);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (67, '전북 군산시 옥산면 남내안길 5', '바다다', 35.9403716307133, 126.7677010944710);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (68, '서울 동작구 양녕로 153-9', '바다다', 37.4949511678824, 126.9414336999090);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (69, '광주 동구 의재로 85', '하늘이다', 35.1325115626532, 126.9368079685440);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (72, '서울 영등포구 가마산로90길 1', '90', 37.5039257623507, 126.9213269017950);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (73, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 32.4423242000000, 42.2323220000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (74, '서울 노원구 공릉로 264', '바다다', 37.6322400488783, 127.0749284515990);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (75, '광주 동구 조선대1길 19', '111', 35.1412921113357, 126.9255597828870);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (76, '경기 성남시 분당구 대왕판교로 372', '44동 22길', 37.3767796237620, 127.1021709743650);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (77, '광주 동구 조선대1길 15', '123123', 35.1409551143247, 126.9263338078640);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (78, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000000000, 32.0100000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (79, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000000000, 32.0100000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (80, '경기 성남시 분당구 삼평동 629', '바다다', 37.4007513863371, 127.1041761249625);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (81, '경기 성남시 분당구 삼평동 629', '땅이다', 37.4002820163872, 127.1051241674809);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (82, '울산 중구 만남의거리 1', '하늘이다', 35.5549262156880, 129.3204590381570);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (83, '광주광역시 동구 조선대5길 65', '조선대학교 IT융합대학', 35.1398583109884, 126.9342825562217);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (84, '광주광역시 남구 군분로169번길 5', '남부아파트', 35.1466682107364, 126.8858518523045);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (85, '광주 봉선동 3-1번길', '평온빌딩 1층', 32.1000000000000, 32.0100000000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (86, '광주광역시 동구 필문대로287번길 19-24', '평온빌딩 1층', 35.1453447604175, 126.9292302170903);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (87, '광주광역시 동구 필문대로273번길 8-5', '평온빌딩 1층', 35.1464529445461, 126.9283952407910);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (88, '광주광역시 동구 필문대로273번길 12', '평온빌딩 1층', 35.1463089273390, 126.9287355574691);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (89, '광주광역시 동구 필문대로273번길 32', '평온빌딩 1층', 35.1454086930180, 126.9306786990523);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (90, '광주광역시 동구 지산로 3', '평온빌딩 1층', 35.1445836481995, 126.9301581499257);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (91, '광주광역시 동구 지산로 21', '평온빌딩 1층', 35.1460804947737, 126.9311829268543);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (92, '광주광역시 동구 지산로 7', '평온빌딩 1층', 35.1448045953919, 126.9303554875302);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (93, '광주광역시 동구 천변우로 363-19', '평온빌딩 1층', 35.1486774673094, 126.9119237534380);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (94, '부산 영도구 나눔길 1', '땅이다', 35.0870529406586, 129.0437253510300);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (95, '부산 연제구 미남로 1', '하늘이다', 35.1943929414261, 129.0719131668150);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (96, '세종특별자치시 장군면 무넘이길 4', '하늘이다', 36.4982714518892, 127.2044083774380);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (97, '충북 진천군 덕산읍 자안로 9', '하늘이다', 36.9041587707688, 127.5345921152020);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (98, '부산 금정구 남문로 3', '땅이다', 35.2416478484105, 129.0613504697680);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (99, '울산 중구 만남의거리 1', '땅이다', 35.5549262156880, 129.3204590381570);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (100, '울산 중구 우정동 425-1', '하늘이다', 35.5598098021342, 129.3148966916345);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (101, '광주 동구 조선대5길 65', '하늘이다', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (102, '광주광역시 남구 중앙로 69', '평온빌딩 1층', 35.1434542120327, 126.9060997070593);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (103, '광주 동구 조선대길 7', '1121', 35.1443748245301, 126.9274342347550);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (104, '광주 동구 의재로33번길 33', '1311', 35.1350581534093, 126.9308097056810);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (105, '서울 노원구 누원로 16', '땅이다', 37.6867126530892, 127.0524372821000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (106, '울산 중구 만남의길 90', '땅이다', 35.5507005286619, 129.3008372100540);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (107, '광주 동구 조선대5길 65', '99-9', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (108, '울산 중구 만남의거리 1', '바다다', 35.5549262156880, 129.3204590381570);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (109, '울산 중구 만남의거리 1', '목크빌 1204호', 35.5549262156880, 129.3204590381570);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (110, '서울 동대문구 망우로 1', '13-1441', 37.5883415442949, 127.0541147737520);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (111, '충북 충주시 신니면 모남요골길 1', '바다다', 37.0048807009882, 127.6780905800350);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (112, '울산 중구 만남의거리 1', '땅이다', 35.5549262156880, 129.3204590381570);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (113, '서울 종로구 돈화문로5길 28-3', 'asd', 37.5708764408522, 126.9904302376950);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (114, '서울 종로구 종로2가 38-1', 'asd', 37.5712674402635, 126.9880916448014);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (115, '서울 종로구 익선동 166-68', '땅이다', 37.5737182879904, 126.9895855077837);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (116, '서울 종로구 경운동 64-19', '땅이다', 37.5742585522324, 126.9863252201411);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (117, '서울 종로구 와룡동 2-71', '바다다', 37.5795928868955, 126.9909884922891);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (118, '서울 중구 입정동 264-7', '땅이다', 37.5676637421363, 126.9913521434837);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (119, '광주 동구 서석동 388', 'asss', 35.1436800000000, 126.9334016000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (120, '부산 연제구 미남로 1', '바다다', 35.1943929414261, 129.0719131668150);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (121, '광주 동구 서석동 388', 'asd', 35.1436800000000, 126.9334016000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (122, '서울 종로구 관수동 21-4', 'asd', 37.5694295938972, 126.9900841608008);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (123, '서울 중구 입정동 63', 'sss', 37.5676639275145, 126.9944309614935);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (124, '서울 중구 인현동2가 98-2', 'ddddd', 37.5643482826271, 126.9948839556134);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (125, '서울 중구 필동2가 19-6', 'asddd', 37.5606001660738, 126.9956085712834);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (126, '서울 중구 장충동2가 산 14-48', 'asd', 37.5575007799334, 126.9970121413377);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (127, '서울 중구 장충동2가 산 14-21', 'asdwd', 37.5532480956013, 126.9982345474821);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (128, '서울 중구 장충동2가 산 5-7', 'asdw', 37.5501486745017, 126.9996831370289);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (129, '서울 중구 신당동 432-1658', 'asdw', 37.5490313075990, 127.0055223864859);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (130, '서울 중구 신당동 844', '바다다', 37.5475535957117, 127.0069254791200);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (131, '서울 중구 신당동 844', 'asds', 37.5461480799655, 127.0061558658600);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (132, '서울 성동구 옥수동 산 5-164', 'asdsad', 37.5444179357503, 127.0095504240998);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (133, '서울 종로구 관수동 143-7', 'ascasc', 37.5689610800166, 126.9901295004312);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (141, '서울 강남구 학동로59길 5', '59', 37.5180983015937, 127.0434392748970);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (145, '서울 중구 을지로3가 5-25', '서울 중구 을지로3가 5-25', 37.5666185171543, 126.9904467422595);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (146, '광주 동구 서석동 388', 'asd', 35.1436800000000, 126.9334016000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (147, '광주 동구 서석동 228', 'asdw', 35.1401204187299, 126.9356100855972);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (148, '서울 성동구 옥수동 250', 'asdw', 37.5417505878731, 127.0135330571991);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (149, '서울 구로구 디지털로26길 72', 'asd', 37.4809955722412, 126.8965309080940);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (150, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 32.4423242000000, 42.2323220000000);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (151, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (152, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (153, '광주 동구 서석동 산 92', 'asdw', 35.1364060039950, 126.9341207421615);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (154, '광주 동구 학동 714', 'asd', 35.1338456050881, 126.9331572495753);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (155, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (156, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (157, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (158, '광주 동구 조선대5길 5533', '조선대학교 IT 융합대학', 35.1400315855140, 126.9341767465290);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (159, '울산 중구 만남의길 5', '12dqwd', 35.5495654421416, 129.2919002097130);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (160, '광주 동구 서석동 300', 'asdw', 35.1402256691044, 126.9303429281243);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (161, '광주 동구 학동 671-1', 'sadw', 35.1352507997250, 126.9314882956362);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (162, '광주 동구 서석동 256', '바다다', 35.1388568892004, 126.9326264548781);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (163, '광주 동구 서석동 산 92', '땅이다', 35.1376675999256, 126.9335491439354);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (164, '광주 동구 계림동 1827', 'asd', 35.1561165062578, 126.9158860165390);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (165, '광주 북구 삼각동 479-1', 'dddd', 35.1990793447135, 126.8978768665979);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (166, '광주 동구 학동 산 80-1', '바다다', 35.1372364997276, 126.9364462794132);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (167, '광주 동구 학동 산 97-5', '땅이다', 35.1336310257163, 126.9364051924046);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (168, '광주 동구 운림동 603-7', '바다다', 35.1344979730399, 126.9396084310396);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (169, '광주 동구 운림동 산 272-1', '땅이다', 35.1305336321009, 126.9430345510182);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (170, '광주 동구 소태동 산 275-1', 'asd', 35.1292366004108, 126.9450542283920);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (171, '광주 동구 소태동 산 17-1', '땅이다', 35.1249808351441, 126.9422046194184);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (172, '광주 동구 용산동 산 255', '땅이다', 35.1145194967597, 126.9316372891528);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (173, '전남 담양군 고서면 성월리 산 28-1', '바다다', 35.2145849774696, 126.9664796657867);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (174, '전남 담양군 가사문학면 학선리 46', 'asd', 35.1914785797751, 126.9909085920710);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (175, '광주 동구 계림동 962', 'as', 35.1580259998648, 126.9139084681753);
INSERT INTO  addresses (address_id, main_place, detail_place, latitude, longitude) VALUES (176, '광주 동구 소태동 산 274', 'asd', 35.1263165168514, 126.9458022317163);

INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (1, 'LEVEL_2', 'ACTIVE', 'CUSTOMER', 'user1', '$2a$10$23U5WQ59otWIrPNh.7Ao6e2.8tyNVInkXz3t9pvO0V7SpPzPiW1DG', '윤유저', '미스터나유저', 'user1@gmail.com', '1999-07-07', '01088008282', '2023-07-05 14:58:45');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (2, 'LEVEL_4', 'DORMANCY', 'CUSTOMER', 'user2', '12345', '박휴면', '얘들이말을안들어', 'user2@gmail.com', '1997-03-10', '01092020018', '2023-05-05 15:09:19');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (3, 'LEVEL_1', 'WITHDRAWAL', 'CUSTOMER', 'user3', '12345', '정탈퇴', '나이러면탈주', 'user3@naver.com', '2002-07-01', '01092430192', '2021-06-05 15:13:17');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (4, 'LEVEL_3', 'ACTIVE', 'BUSINESS', 'user4', '12345', '유사장', '스틸마이넘버원', 'user4@naver.com', '1997-07-30', '01023451234', '2023-06-30 15:14:43');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (5, 'LEVEL_4', 'ACTIVE', 'ADMIN', 'user5', '12345', '추관리', '추추추추추', 'user5@gmail.com', '1998-07-01', '01056472039', '2023-07-05 15:17:38');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (6, 'LEVEL_4', 'ACTIVE', 'BUSINESS', 'user6', '12345', '김사장', '말비묵', 'user6@gmail.com', '1995-07-04', '01023123120', '2023-07-04 15:57:10');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (7, 'LEVEL_1', 'ACTIVE', 'BUSINESS', '조선대', '1234', '조대', '이름이유저래', 'user@cookshoong.store', '1997-06-14', '01012345678', '2023-07-15 09:25:19');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (8, 'LEVEL_1', 'ACTIVE', 'BUSINESS', '충장로', '1234', '충장로', '이름이유저래', 'user@cookshoong.store', '1997-06-14', '01012345678', '2023-07-15 09:25:30');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (9, 'LEVEL_1', 'ACTIVE', 'CUSTOMER', 'edfa', 'asdasd', 'asdads', 'asdad', 'asd@marco.kr', '2023-07-08', '123', '2023-07-17 05:23:22');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (10, 'LEVEL_1', 'ACTIVE', 'CUSTOMER', 'temp1', '$2a$10$uUiaM4kq5dV9XIGGoMoH7e1C.ybjb/Mbci.oqGp1A7TkrYWnZ/Cnm', 'temp', 'temp', 'temp@temp.com', '2023-07-04', '0101234', '2023-07-17 06:51:58');
INSERT INTO  accounts (account_id, rank_code, status_code, authority_code, login_id, password, name, nickname, email, birthday, phone_number, last_login_at) VALUES (11, 'LEVEL_1', 'ACTIVE', 'CUSTOMER', 'temp2', '$2a$10$dhY.mmISkFHAP0bTEch4MuNjdY6z6xzVDEfzaIFDM31iNS/alNfO6', 'onetwothreefourfive', 'onetwothreefourfive', 'onetwothreefourfive@onetwothreefourfive.com', '2023-07-12', '0101111', '2023-07-17 07:03:00');

INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 158, '조대3', '2023-07-18 14:29:23');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 164, 'asd', '2023-07-18 14:29:23');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 165, 'sss', '2023-07-18 14:29:27');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 167, '니똥', '2023-07-18 14:29:22');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 170, '니똥', '2023-07-18 14:29:25');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 173, 'asd', '2023-07-18 14:29:26');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 175, 'as', '2023-07-18 14:29:26');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (1, 176, '니똥', '2023-07-18 14:29:21');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (4, 2, '우리가게', '2023-07-18 10:54:02');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (6, 3, '가게주소', '2023-07-18 10:56:54');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (7, 83, 'IT융합대학', '2023-07-18 10:57:14');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (8, 84, '충장로', '2023-07-18 10:57:18');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (10, 109, '우리집', '2023-07-18 10:57:26');
INSERT INTO  account_address (account_id, address_id, alias, renewal_at) VALUES (11, 110, 'myhome', '2023-07-18 10:57:33');

INSERT INTO  oauth_type (oauth_type_id, provider) VALUES (1, '페이코');

INSERT INTO  oauth_accounts (account_id, oauth_type_id, account_code) VALUES (1, 1, 'adfadfadsfasdf');

Insert into images (image_id, origin_name,saved_name, is_public) VALUES (1, 'adfadfadp.png','adlkfjadlkfjasodiadk.png', 1);
Insert into images (image_id, origin_name,saved_name, is_public) VALUES (2, 'adfadfadf.png','aldkjfalsdkjfaldkfja.png', 0);

INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license_image_id, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, store_image_id, bank_account_number) VALUES (1, null, 2, 4, 'KB', 'OPEN', 1,'123456789', '유사장', '2023-06-01', '보쌈맛있는집', '0502234123', 1.1, '블라블라블라', 2,'110423032123');
INSERT INTO merchants(name) VALUES ('네네치킨');
INSERT INTO merchants(name) VALUES ('도미노피자');
INSERT INTO merchants(name) VALUES ('토마토피자');
INSERT INTO merchants(name) VALUES ('원할머니보쌈');
INSERT INTO merchants(name) VALUES ('비비큐치킨');
INSERT INTO merchants(name) VALUES ('디저트39');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license_image_id, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, store_image_id, bank_account_number)
VALUES (2, 1, 3, 4, 'KB', 'CLOSE', 1, '123123123', '유사장', '2022-07-01', '네네치킨 진월점', '0402031203', 1.0, '브리마얼미아러', 2,'110222123012');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license_image_id, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, store_image_id, bank_account_number)
VALUES (3, null, 4, 6, 'SHIN', 'OPEN', 1, '123123111', '김사장', '2022-11-03', '초코하임드링', '0100010210', 0.5, '프리미엄 원두만', 2,'112301230123');

INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license_image_id, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, store_image_id, bank_account_number) VALUES (4, 1, 5, 4, 'KB', 'CLOSE', 1, '111122221', '김악덕', '1999-10-10', '네네치킨 봉선점', '01012341234', 2.0, null, 2, '111000022213');
INSERT INTO  stores (store_id, merchant_id, address_id, account_id, bank_type_code, store_status_code, business_license_image_id, business_license_number, representative_name, opening_date, name, phone_number, default_earning_rate, description, store_image_id, bank_account_number) VALUES (10, 1, 21, 1, 'KB', 'CLOSE',1, '12-22', '네네', '2023-07-09', '네네치킨 - 조선대점', '01028221864', 0.0, '네네치킨 조선대점입니다.', 2, '12-22');

INSERT INTO  stores_has_categories (store_id, category_code) VALUES (2, 'CHK');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (3, 'DES');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (1, 'NIG');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (2, 'NIG');
INSERT INTO  stores_has_categories (store_id, category_code) VALUES (1, 'POR');

INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (1, 1, 'MON', '10:00:00', '18:00:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (2, 1, 'MON', '20:00:00', '28:00:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (3, 1, 'MON', '10:28:00', '21:27:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (4, 1, 'WED', '10:34:00', '21:35:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (5, 1, 'FRI', '09:34:00', '21:41:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (6, 1, 'TUE', '10:36:00', '14:35:00');
INSERT INTO  business_hours (business_hours_id, store_id, day_code, open_hour, close_hour) VALUES (7, 1, 'MON', '04:43:00', '15:42:00');

INSERT INTO  charge_types (charge_type_code, name, is_deleted) VALUES ('KK', 'KAKAOPAY', 1);
INSERT INTO  charge_types (charge_type_code, name, is_deleted) VALUES ('PAYCO', '페이코결제', 0);
INSERT INTO  charge_types (charge_type_code, name, is_deleted) VALUES ('PC', 'PAYCO', 1);
INSERT INTO  charge_types (charge_type_code, name, is_deleted) VALUES ('TOSS', '토스결제', 0);
INSERT INTO  charge_types (charge_type_code, name, is_deleted) VALUES ('TS', 'TOSS', 1);


INSERT INTO  refund_types (refund_type_code, name, is_deleted) VALUES ('AR', '전액환불', 1);
INSERT INTO  refund_types (refund_type_code, name, is_deleted) VALUES ('PRIVATE', '개인적인이유', 0);
INSERT INTO  refund_types (refund_type_code, name, is_deleted) VALUES ('TYPE', '전액환불', 0);


INSERT INTO  coupon_types (coupon_type_id, sub_type) VALUES (2, 'PERCENT');
INSERT INTO  coupon_types (coupon_type_id, sub_type) VALUES (3, 'CASH');
INSERT INTO  coupon_types (coupon_type_id, sub_type) VALUES (4, 'CASH');
INSERT INTO  coupon_types (coupon_type_id, sub_type) VALUES (5, 'CASH');
INSERT INTO  coupon_types (coupon_type_id, sub_type) VALUES (6, 'PERCENT');

INSERT INTO  coupon_usage (coupon_usage_id, sub_type) VALUES (1, 'ALL');

INSERT INTO  coupon_usage_all (coupon_usage_id) VALUES (1);

INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (1, 2, 1, '퍼센트 쿠폰', '설정된 퍼센트만큼 가격을 차감합니다.', 10000, 1);
INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (2, 3, 1, '금액 쿠폰', '설정된 금액만큼 가격을 차감합니다.', 10000, 1);
INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (3, 4, 1, '테스트쿠폰', '테스트입니다', 235900, 1);
INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (4, 4, 1, '테스트쿠폰', '테스트입니다', 100000, 1);
INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (5, 5, 1, '히히', '히히쿠폰', 20, 0);
INSERT INTO  coupon_policy (coupon_policy_id, coupon_type_id, coupon_usage_id, name, description, usage_period, is_deleted) VALUES (6, 6, 1, '포인트 쿠폰', '포인트 쿠폰입니다', 30, 0);

INSERT INTO  coupon_type_cash (coupon_type_id, discount_amount, minimum_order_price) VALUES (3, 5000, 10000);
INSERT INTO  coupon_type_cash (coupon_type_id, discount_amount, minimum_order_price) VALUES (4, 2000, 10000);
INSERT INTO  coupon_type_cash (coupon_type_id, discount_amount, minimum_order_price) VALUES (5, 1000, 10000);

INSERT INTO  coupon_type_percent (coupon_type_id, rate, minimum_order_price, maximum_discount_amount) VALUES (2, 10.0, 10000, 30000);
INSERT INTO  coupon_type_percent (coupon_type_id, rate, minimum_order_price, maximum_discount_amount) VALUES (6, 10.0, 10000, 5000);


INSERT INTO  menu_status (menu_status_code, description) VALUES ('CLOSE', '준비중');
INSERT INTO  menu_status (menu_status_code, description) VALUES ('OPEN', '판매중');
INSERT INTO  menu_status (menu_status_code, description) VALUES ('OUTED', '삭제됨');


INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id, cooking_time, earning_rate) VALUES (1, 'OPEN', 2, '후라이드 치킨', 1000, '', 2, 20, 1.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id, cooking_time, earning_rate) VALUES (2, 'OPEN', 2, '파닭', 2000, '<p>파가 올라간 <strong>닭</strong></p>', 2, 30, 2.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id, cooking_time, earning_rate) VALUES (3, 'OPEN', 2, '닭튀김', 1000, '<p>메뉴 <strong>설명을 입력해주세요.</strong></p>', 2, 20, 1.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id, cooking_time, earning_rate) VALUES (4, 'OPEN', 2, '하이네캔', 5000, '<p>메뉴 설명을 입력해주세요.</p>', 2, 0, 1.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id,cooking_time, earning_rate) VALUES (5, 'OPEN', 2, '칭따오', 6000, '<p>메뉴 설명을 입력해주세요.</p>', 2, 0, 0.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description,menu_image_id, cooking_time, earning_rate) VALUES (6, 'OPEN', 2, '진라면', 3000, '<p>메뉴 설명을 입력해주세요.</p>', 2, 10, 0.0);
INSERT INTO  menu (menu_id, menu_status_code, store_id, name, price, description, menu_image_id, cooking_time, earning_rate) VALUES (7, 'OPEN', 2, '오렌지 파르페', 5000, '<p>메뉴 설명을 입력해주세요.</p>', 2, 10, 0.0);



INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (1, 2, '후라이드', '바삭바삭', 0);
INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (2,2, '양념치킨', '매콤', 0);
INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (3,2, '라면', '꼬들', 0);
INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (4, 2, '튀김', '바삭바삭', 0);
INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (5, 2, '주류', '술종류', 0);
INSERT INTO  menu_groups (menu_group_id, store_id, name, description, menu_group_sequence) VALUES (6, 2, '메인메뉴', '메인메뉴', 0);

INSERT INTO  menu_has_menu_groups (menu_group_id, menu_id, menu_sequence) VALUES (1, 1, 1);
INSERT INTO  menu_has_menu_groups (menu_group_id, menu_id, menu_sequence) VALUES (2, 2, 2);
INSERT INTO  menu_has_menu_groups (menu_group_id, menu_id, menu_sequence) VALUES (3, 3, 3);

INSERT INTO  option_groups (option_group_id, store_id, name, min_select_count, max_select_count, is_deleted) VALUES (1, 2, '매운맛', null, null, 0);
INSERT INTO  option_groups (option_group_id, store_id, name, min_select_count, max_select_count, is_deleted) VALUES (2,2 , '맛', null, null, 0);
INSERT INTO  option_groups (option_group_id, store_id, name, min_select_count, max_select_count, is_deleted) VALUES (3, 2, '양', null, null, 0);
INSERT INTO  option_groups (option_group_id, store_id, name, min_select_count, max_select_count, is_deleted) VALUES (4, 3, '옵션 그룹 1', null, null, 0);

INSERT INTO  options (option_id, option_group_id, name, price, option_sequence, is_deleted) VALUES (1, 1, '매운 매운맛', 2000, 0, 0);
INSERT INTO  options (option_id, option_group_id, name, price, option_sequence, is_deleted) VALUES (2, 1, '매운맛', 500, 0, 0);
INSERT INTO  options (option_id, option_group_id, name, price, option_sequence, is_deleted) VALUES (3, 1, '순한맛', 0, 0, 0);
INSERT INTO  options (option_id, option_group_id, name, price, option_sequence, is_deleted) VALUES (4, 1, '청양고추 추가', 0, 0, 0);

