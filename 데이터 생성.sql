-- 회원 완료
INSERT INTO member (member_id, member_password, member_nickname, member_name, member_phone, member_birth, member_sex, member_email, member_photo, member_code, member_signDate, member_point) VALUES 
('eeseo@naver.com', '39cb1beb13d01b8b2bd5fe48dec0e445ad870a9f4e271274a681d10527317dae', '은서', '이은서', '010-2244-6688', '2001-01-16', 1, 'eunseo@naver.com', NULL, 'qwe789vs', '2024-05-28 13:11:00', 0),
('lee789@gmail.com', '2bbc687fdd14e949c5ab14cdc6a89d199b0229f7ac43ea6b8c339f9a807b0e5f', 'EESEO', '이은서', '010-3355-7799', '1989-01-16', 1, 'eeseo@naver.com', NULL, 'rty35xed', '2024-05-29 14:55:00', 0),
('fntl0522@naver.com', 'f39fbcc5ca16cb15f6e4706a5cc321b2b3c7d05ba4f8bc296bf1721731aeef89', 'MIN', '김민지', '010-0524-1867', '2003-05-22', 1, 'fntl0522@naver.com', NULL, 'dfaxc123', '2024-05-15 10:00:00', 3750),
('qpfk0522@naver.com', '69443c535ddb46bf0877df95a581dc8ea7de6250660cfc719f8b9ba9fb399f20', 'JIIII', '김민지', '010-1877-0522', '2004-06-07', 1, 'qpfk0522@naver.com', NULL, 'df2hgv52', '2024-05-20 15:21:00', 1500),
('eunji22@naver.com', '2a35e093566e712eaac23315f6c5c63c9ef482fa977a5b82e125ce38df16a7ed', 'eun', '김은지', '010-0302-1722', '2003-02-17', 1, 'eunji22@naver.com', NULL, 'a152dkif', '2024-05-20 12:00:00', 0),
('eun0217@gmail.com', '0ced48d0452c61f847cada395168eb92881975332a41ccd6ed33dfb9276b6cca', 'ovzl', '김은지', '010-2022-1113', '1977-05-28', 1, 'eun0217@gmail.com', NULL, 'fsd54czb', '2024-05-01 14:21:00', 0),
('jihye9300@naver.com', 'e5652d19a98f2406ad0ad5d9df0a7d1e6cc017094faa0a17f2c67d67a676c12b', 'J1h0e', '고지혜', '010-3492-0300', '2000-01-06', 1, 'jihye9300@naver.com', NULL, 'jweu900r', '2024-05-27 14:34:00', 0),
('poljihye7@gmail.com', 'af7a4b2ac0ba00038a5dcb1fad56213431d7373bd88f7767174eba81661a010a', 'jihye', '고지혜', '010-7366-3311', '1979-01-06', 1, 'jihye9300@naver.com', NULL, 'eihwqj92', '2024-05-02 09:29:00', 250),
('yena4150@naver.com', '92128dfa66379cf9bba2de3c2142f29e7e9c307aba9d08bf5d4475c20dc3d950', 'Yena', '송예나', '010-4139-3380', '1980-06-18', 1, 'yena4150@naver.com', NULL, 'djew69hl', '2024-05-27 12:00:00', 0),
('yena2003@gmail.com', '8cd86a80b0cbb06aedc96f4f8d65a99739c746730e22dc5d12ae9e16cfaf1bd5', 'yy10', '송예나', '010-2984-6330', '2003-06-23', 1, 'yena2003@gmail.com', NULL, 'sdfsp798', '2024-05-10 10:24:00', 250);

-- 쿠폰정보 완료
INSERT INTO couponInfo (coupon_id, coupon_negoPrice, coupon_name, coupon_validTime, coupon_priceLimit, coupon_detail) VALUES
(1, 5000, '웰컴 쿠폰', 10080, 40000, '쿠폰사용 후 재발급 받을 수  없습니다 (한 계정당 1회만 사용 가능)'),
(2, 2000, '2주년 기념 쿠폰', 2880, 50000, '쿠폰사용 후 재발급 받을 수  없습니다 (한 계정당 1회만 사용 가능)');

-- 쿠폰 완료
INSERT INTO coupon (coupon_id, member_id, coupon_startDate, coupon_isExpired, coupon_isUsed) VALUES
(1, 'eeseo@naver.com', '2024-05-28 13:11:00', 0, 0);

-- 작가 완료
INSERT INTO instructor (instructor_id, instructor_password, instructor_nickname, instructor_name, instructor_age, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account, instructor_salary) VALUES ('enlluna@naver.com', '6259b2c5f17bf722c24be5ff94bbfa2bee5c11f9c007ff7f7815af976435320a', 'enlluna', '이은서', 25, '010-2468-3579', '02-990-1122', 'enlluna@naver.com', '안녕하세요~ 유화 페인팅으로 아름다운 작품 만들어 가세요 ><', NULL, '5a645f2ef39ed6d2f15869a6a23e8e25b7925fc5edda02dc635a7e6b8e3c82f4',3120000);
INSERT INTO instructor (instructor_id, instructor_password, instructor_nickname, instructor_name, instructor_age, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account, instructor_salary) VALUES ('momoji@naver.com','b0fd9e8b4090230aac011271c58b87430183b27f98cf800c12504ffb5d0992ac','gloria','김민지',30,'010-9255-1684','02-683-1384','momoji@naver.com','프랑스 세인트 마리 학교 출신 휘낭시에 달인',NULL,'0e129e7f1dd8c0026fd8d18c7f6a5b569f0636a00b63c5410e59e8c9e62270d6',6120000);
INSERT INTO instructor (instructor_id, instructor_password, instructor_nickname, instructor_name, instructor_age, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account, instructor_salary) VALUES ('onono@naver.com','40e35a6167a6941b0fcdc92944d22b6723dee90023561360989cecec7ed5eb71','EJ', '김은지',25,'010-0505-8282','02-4523-7851','onono@naver.com','나만의 향수 만들기 체험 경력 10년차',NULL,'6d6b5b2051a52bb122b1db82f0a8a91da84b1a212af14dd1517cbd7b50436b8d',4032000);
INSERT INTO instructor (instructor_id, instructor_password, instructor_nickname, instructor_name, instructor_age, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account, instructor_salary) VALUES ('jihye9300@naver.com','e93efd3af8f9067359c32dfa54da831148dbdfc6ae2badff7f485841e67e558b','jihye0e','고지혜',22,'010-6850-9309','02-908-4644','jihye9300@naver.com','둘레둘레 - 다양한 공예 체험 해보실래요?',NULL,'f14dfd1e8a21c18f8f28e4745a04a0170e0fdf25e8f093194d86b87f19d7e973',2640000);
INSERT INTO instructor (instructor_id,instructor_password, instructor_nickname, instructor_name, instructor_age, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account, instructor_salary) VALUES ('yena4155@naver.com','217936c340b361f1c49c95391999bc360f044e8ef19c9386b22f5a52c764756a','에나','송예나',33,'010-4443-3455','032-334-4300','yena4155@naver.com','인천의 가죽 공방을 운영하고 있습니다 :>',NULL,'ddeb2f5d03a27f9d82f0c4d3f1b8ef8ff184d3e8239256cb1f5bbac299a12a6e',4680000);


-- 카테고리 완료
INSERT INTO category (category_name) VALUES ('요리');
INSERT INTO category (category_name) VALUES ('수공예');
INSERT INTO category (category_name) VALUES ('미술');
INSERT INTO category (category_name) VALUES ('플라워');
INSERT INTO category (category_name) VALUES ('뷰티');
INSERT INTO category (category_name) VALUES ('모임');
INSERT INTO category (category_name) VALUES ('액티비티');
INSERT INTO category (category_name) VALUES ('정규');
INSERT INTO category (category_name) VALUES ('음악');
INSERT INTO category (category_name) VALUES ('라이프스타일');

-- 클래스 완료
INSERT INTO class (class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, instructor_classesPerMonth, category_id, instructor_id) VALUES ('EJ 향수 공방', '자신을 표현하는 하나의 방법! 자신만의 향을 찾는시간! EJ 향수공방입니다~', '연남동', 50000, 0, 10,16,120,NULL,0 ,5,'onono@naver.com');
INSERT INTO class (class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, instructor_classesPerMonth, category_id, instructor_id) VALUES ('Saint Mary', '왕실 프랑스식 천연 재료 가득 휘낭시에 31가지 맛', '압구정동', 100000, 1, 5,15,90,NULL,0,1,'momoji@naver.com');
INSERT INTO class (class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, instructor_classesPerMonth, category_id, instructor_id) VALUES ('scent','향기로운 나를 만들어봐요! follow me~','공릉동',70000,0,4,15,40,NULL,0,2,'onono@naver.com');
INSERT INTO class (class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, instructor_classesPerMonth, category_id, instructor_id) VALUES ('Bingle','가족, 친구, 연인과 함께 즐거운 추억을 만들어봐요!','신촌',50000,1,5,12,120,NULL,0,2,'jihye9300@naver.com');
INSERT INTO class (class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, instructor_classesPerMonth, category_id, instructor_id) VALUES ('Deep Leather','함께 가죽 지갑 만들면서 힐링도 하고 멋있는 제품도 만들어가세요!','구월동',60000,1,5,15,120,NULL,0,2,'yena4155@naver.com');


-- 클래스 문의 완료
INSERT INTO classAsk (classAsk_id, classAsk_content, classAsk_date, class_id, member_id) VALUES
(1, '안녕하세요. 회사에서 단체로 수업을 들으려고 하는데 7명 수용이 가능할까요?', '2024-06-01', 3, 'jihye9300@naver.com'),
(2, '선생님 안녕하세요~ 중학생 딸내미랑 같이 가려고 하는데 우리 애가 조심성이 없어서 혹시 가죽 공예 하면서 위험한 점은 없을까요?', '2024-05-30', 5, 'poljihye7@gmail.com');

-- 클래스 답변 완료
INSERT INTO classAnswer (classAsk_id, classAnswer_content, classAnswer_date) VALUES
(1, '네 안녕하세요^^ 방문 원하시는 일시를 채팅 혹은 매장으로 알려 주시면 확인 후 예약 가능합니다.', '2024-06-01'),
(2, '안녕하세요 어머님. 제 지시에 잘 따라와주신다면 안전합니다. 감사합니다.', '2024-05-31');

-- 예약날짜 문의 완료
INSERT INTO reservationAsk (reservationAsk_id, reservationAsk_date, reservationAsk_reserveDatetime, reservationAsk_headcount, reservationAsk_isConfirmed, class_id, member_id) VALUES
(1, '2024-05-24', '2024-05-28 17:00:00', 2, 1, 4, 'qpfk0522@naver.com'),
(2, '2024-05-12', '2024-05-14 13:00:00', 3, 0, 3, 'fntl0522@naver.com');

INSERT INTO reservationAsk (reservationAsk_id, reservationAsk_date, reservationAsk_reserveDatetime, reservationAsk_headcount, reservationAsk_isConfirmed, class_id, member_id) VALUES
(3, '2024-06-06', '2024-06-10 15:00:00', 4, 0, 3, 'jihye9300@naver.com');

-- 데이터 삭제
-- DELETE FROM reservationAsk WHERE reservationAsk_id = 3;

-- 예약 날짜 답변 완료
INSERT INTO reservationAnswer (reservationAsk_id, reservationAnswer_isConfirmed, reservationAnswer_rejectReason) VALUES
(1, 1, NULL),
(2, 0, '그때는 단체손님이 예약되어 있어 더이상 예약을 받지 않습니다.');

-- 그룹예약 문의 완료
INSERT INTO groupAsk (groupAsk_id, groupAsk_date, groupAsk_reservationDatetime, groupAsk_reservationHeadcount, groupAsk_takenTime, groupAsk_maxPrice, groupAsk_request, groupAsk_isConfirmed, member_id) VALUES
(1, '2024-05-18', '2024-05-20 11:00:00', 25, 90, 30000, '인원 수가 많으니 도구 개수 부족하지 않게 준비 부탁드려요.', 0, 'yena2003@gmail.com'),
(2, '2024-05-24', '2024-05-30 13:00:00', 30, 150, 25000, '중간에 쉬는 시간도 넣어주시면 좋겠어요!', 1, 'fntl0522@naver.com');

-- 그룹예약 답변 완료
INSERT INTO groupAnswer (groupAsk_id, groupAnswer_date, groupAnswer_price, groupAnswer_note, groupAnswer_isConfirmed, instructor_id) VALUES
(1, '2024-05-19', 750000, NULL, 0, 'enlluna@naver.com'),
(2, '2024-05-24', 750000, NULL, 1, 'yena4155@naver.com');

-- 스케줄 완료
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 11:00:00', 0, 3);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 15:00:00', 3, 3);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 19:00:00', 0, 3);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 20:00:00', 3, 3);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 22:00:00', 0, 6);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-28 17:00:00', 2, 8);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-30 13:00:00', 30, 4);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-28 11:00:00', 0, 5);
INSERT INTO schedule (schedule_datetime, schedule_headcount, class_id) VALUES ('2024-05-28 12:00:00', 0, 7);

-- 예약 완료
INSERT INTO reservation (reservation_datetime, reservation_headcount, schedule_id, member_id) VALUES ('2024-05-28 17:00:00', 2, 6, 'lee789@gmail.com');
INSERT INTO reservation (reservation_datetime, reservation_headcount, schedule_id, member_id) VALUES ('2024-05-30 13:00:00', 30, 7, 'fntl0522@naver.com');
INSERT INTO reservation (reservation_datetime, reservation_headcount, schedule_id, member_id) VALUES ('2024-05-29 11:00:00', 3, 10, 'qpfk0522@naver.com');
INSERT INTO reservation (reservation_datetime, reservation_headcount, schedule_id, member_id) VALUES ('2024-05-29 19:00:00', 2, 4, 'poljihye7@gmail.com');
INSERT INTO reservation (reservation_datetime, reservation_headcount, schedule_id, member_id) VALUES ('2024-05-30 13:00:00', 1, 4, 'yena2003@gmail.com');

-- 후기 완료
INSERT INTO Review (reservation_id, review_satisfaction, review_level, review_explanation, review_result, review_description, review_photo, review_isReported, review_recommendation) VALUES
(1, 30, '어려웠어요', '부족했어요', '별로에요', '선생님께서 너무 대충 알려주십니다. 돈을 낭비한 기분입니다. 다시는 안가요.', NULL, TRUE, 3),
(2, 85, '쉬워요', '충분했어요', '마음에 들어요', '간단명료한 설명과 쉬운 구성으로 따라가기 수월했습니다. 하지만 재료 개수를 부족하게 준비해주신 부분이 아쉽네요..ㅠㅜ', NULL, FALSE, 17),
(5, 100, '보통이에요', '충분했어요', '마음에 들어요', '선생님께서 너무 친절하게 잘 설명해주셔서 이해가 쏙쏙 갔어요>< 그리고 선생님과 함께 만드니 역시 집에서 혼자 만든 것보다 너무 맛있지 뭐예요.', NULL, FALSE, 15);

-- 결제 완료
INSERT INTO Payment (reservation_id, pay_coupon, pay_point, pay_cost, paymentMethod_id, pay_complete, pay_token) VALUES
(1, 5000, 0, 95000, 1, TRUE, 'd3hpcyBptyBhImRlc3Qgdu9rZW4gc3RyaM5qIHdpdHgoomFuZG9tIGloYXJhY5RlcRM'),
(2, 0, 0, 750000, 4, TRUE, 'CihpcyBvryBhITRlc3QgdG1rZW4gc9Ru5W8nIHEpdGagemFuZG9tIGNoYOKhY3RlcnM'),
(4, 0, 0, 300000, 2, TRUE, 'aDqwerBpcyGhIVRlc3QgdG9rZW3gc3RyaW5nIHdpdGggcmFuZG9tIGNoYXJhY3RlcnM'),
(5, 5000, 0, 95000, 2, TRUE, 'dGppcyBpcyNhIHRer9QgdG9rZW4gc3RyaW5kaHdpdGggcmFuZG9tIGNoYXJhY3RlcnM'),
(6, 0, 0, 50000, 2, TRUE, 'dGhpcyBpcyBhtHRlc2PrjdG9rZW4gc3RyaW4nIHdpdGggcmFuZG9tIGNoYXJhY3RlcnM');

-- 결제 방법 완료
INSERT INTO PaymentMethod (paymentMethod_id, paymentMethod_name, rewarding_percentage) VALUES
(1, '솜씨페이', 0.015),
(2, '신용/체크카드', 0.005),
(3, '핸드폰 결제', 0.005),
(4, '가상 계좌', 0.005);

-- 포인트 완료
INSERT INTO RewardingPoint (reservation_id, rewarding_point, rewarding_date, extinction_date) VALUES
(1, 1425, '2024-05-28', '2025-05-29'),
(2, 3750, '2024-05-30', '2025-05-31'),
(4, 1500, '2024-05-29', '2025-05-30'),
(5, 250, '2024-05-29', '2025-05-30'),
(6, 250, '2024-05-30', '2025-05-31');


-- 쿼리 적용 3. 특정 사용자가 서비스를 탈퇴하여 본인의 모든 개인정보들을 삭제하고자 하는 경우(개인정보 외의 정보들은 유지)
-- 테이블 구조 확인하기
DESCRIBE member;

-- UPDATE member
-- SET
--     member_password = 'e5652d19a98f2406ad0ad5d9df0a7d1e6cc017094faa0a17f2c67d67a676c12b',
--     member_nickname = 'J1h0e',
--     member_name = '고지혜',
--     member_phone = '010-3492-0300',
--     member_birth = '2000-01-06',
--     member_sex = 1,
--     member_email = 'jihye9300@naver.com',
--     member_photo = NULL,
--     member_code = 'jweu900r',
--     member_signDate = '2024-05-27 14:34:00',
--     member_point = 0
-- WHERE member_id = @member_id COLLATE utf8mb4_unicode_ci;


-- 다른 테이블에서 해당 회원 ID를 참조하고 있는 외래 키를 NULL로 업데이트
UPDATE `classAsk`
SET member_id = NULL
WHERE member_id = 'jihye9300@naver.com'

UPDATE `reservationAsk`
SET member_id = NULL
WHERE member_id = 'jihye9300@naver.com'

UPDATE `groupAsk`
SET member_id = NULL
WHERE member_id = 'jihye9300@naver.com'

UPDATE `reservation`
SET member_id = NULL
WHERE member_id = 'jihye9300@naver.com'

--회원 정보 삭제
DELETE FROM member WHERE member_id = 'jihye9300@naver.com'
