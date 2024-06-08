
-- 사용자 생성
CREATE USER 'gohjie'@'localhost' IDENTIFIED BY 'password';   
CREATE USER 'leeeunseo'@'localhost' IDENTIFIED BY 'password'; 
CREATE USER 'songyena'@'localhost' IDENTIFIED BY 'password'; 
CREATE USER 'kimeunji'@'localhost' IDENTIFIED BY 'password'; 
CREATE USER 'kimminji'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'goeunsong'@'localhost' IDENTIFIED BY 'password'; 

-- ROLE 생성
CREATE ROLE administrator; -- 총괄 책임자, 모든 시스템 기능에 접근 가능
CREATE ROLE general_manager; -- 일반 관리자, 데이터베이스 대부분의 테이블에 접근 가능
CREATE ROLE instructor_manager; -- 내부 직원, 작가 관리 부서, 작가 및 클래스 관리 기능 수행
CREATE ROLE member_manager; -- 내부 직원, 회원 관리 부서, 회원 관리 기능 수행
CREATE ROLE instructor; -- 작가, 클래스 및 문의, 예약 관리 기능 수행
CREATE ROLE member; -- 회원, 자신의 정보 및 클래스 예약 기능 수행

-- ROLE 사용자 배정
GRANT administrator TO 'gohjie'@'localhost';
GRANT general_manager TO 'leeeunseo'@'localhost';
GRANT instructor_manager TO 'songyena'@'localhost';
GRANT member_manager TO 'kimeunji'@'localhost';
GRANT instructor TO 'kimminji'@'localhost';
GRANT member TO 'kimminji'@'localhost';


-- 총괄 책임자 : 모든 데이터베이스와 테이블에 대한 모든 권한 부여
GRANT ALL PRIVILEGES ON *.* TO administrator;

-- 일반 관리자 : 민감한 칼럼을 제외한 모든 권한 부여
    -- 작가 테이블 민감 정보 제외하고 부여
GRANT INSERT (instructor_id, instructor_password, instructor_nickname, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account) ON DB02.instructor TO general_manager;
GRANT SELECT (instructor_id, instructor_password, instructor_nickname, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account) ON DB02.instructor TO general_manager;
GRANT UPDATE (instructor_id, instructor_password, instructor_nickname, instructor_phone, instructor_publicContact, instructor_email, instructor_introduce, instructor_photo, instructor_account) ON DB02.instructor TO general_manager;
GRANT DELETE ON DB02.instructor TO general_manager;
    -- 클래스 테이블 민감 정보 제외하고 부여
GRANT INSERT (class_id, class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, category_id, instructor_id) ON DB02.class TO general_manager;
GRANT SELECT (class_id, class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, category_id, instructor_id) ON DB02.class TO general_manager;
GRANT UPDATE (class_id, class_name, class_introduce, class_location, class_price, class_parking, class_limit, class_ageLimit, class_takenTime, class_photo, category_id, instructor_id) ON DB02.class TO general_manager;
GRANT DELETE ON DB02.class TO general_manager;
    -- 나머지 테이블 권한 부여
GRANT ALL PRIVILEGES ON DB02.category TO general_manager;
GRANT ALL PRIVILEGES ON DB02.schedule TO general_manager;
GRANT ALL PRIVILEGES ON DB02.reservation TO general_manager;
GRANT ALL PRIVILEGES ON DB02.payment TO general_manager;
GRANT ALL PRIVILEGES ON DB02.rewardingPoint TO general_manager;
GRANT ALL PRIVILEGES ON DB02.review TO general_manager;
GRANT ALL PRIVILEGES ON DB02.paymentMethod TO general_manager;
GRANT ALL PRIVILEGES ON DB02.classAsk TO general_manager;
GRANT ALL PRIVILEGES ON DB02.reservationAsk TO general_manager;
GRANT ALL PRIVILEGES ON DB02.groupAsk TO general_manager;
GRANT ALL PRIVILEGES ON DB02.member TO general_manager;
GRANT ALL PRIVILEGES ON DB02.coupon TO general_manager;
GRANT ALL PRIVILEGES ON DB02.couponInfo TO general_manager;
GRANT ALL PRIVILEGES ON DB02.classAnswer TO general_manager;
GRANT ALL PRIVILEGES ON DB02.reservationAnswer TO general_manager;
GRANT ALL PRIVILEGES ON DB02.groupAnswer TO general_manager;

-- 내부 직원 : 작가 관리 부서 권한 부여
GRANT SELECT, UPDATE, DELETE ON DB02.instructor TO instructor_manager; -- 작가 테이블의 조회 및 삭제 권한 부여
GRANT ALL PRIVILEGES ON DB02.class TO instructor_manager; -- 클래스 테이블의 생성, 조회, 수정, 삭제 권한 부여

-- 내부 직원 : 고객 관리 부서 권한 부여
GRANT SELECT, UPDATE, DELETE ON DB02.member TO member_manager; -- 회원 테이블의 조회, 수정, 삭제 권한 부여

-- 작가 권한 부여 (보안상 위험)
GRANT ALL PRIVILEGES ON DB02.class TO instructor; -- 클래스 테이블의 생성, 조회, 수정, 삭제 권한 부여
GRANT ALL PRIVILEGES ON DB02.schedule TO instructor; -- 스케줄 테이블의 생성, 조회, 수정, 삭제 권한 부여
GRANT SELECT, UPDATE, DELETE ON DB02.reservation TO instructor; -- 예약 테이블의 조회, 수정, 삭제 권한 부여
GRANT SELECT ON DB02.classAsk TO instructor; -- 클래스문의 테이블의 조회 권한 부여
GRANT SELECT ON DB02.reservationAsk TO instructor; -- 예약문의 테이블의 조회 권한 부여
GRANT SELECT ON DB02.groupAsk TO instructor; -- 그룹예약문의 테이블의 조회 권한 부여
GRANT INSERT, SELECT ON DB02.classAnswer TO instructor; -- 클래스문의 답변 테이블의 조회 권한 부여
GRANT INSERT, SELECT ON DB02.reservationAnswer TO instructor; -- 예약문의 답변 테이블의 조회 권한 부여
GRANT INSERT, SELECT ON DB02.groupAnswer TO instructor; -- 그룹예약문의 답변 테이블의 조회 권한 부여
GRANT SELECT, UPDATE ON DB02.instructor TO instructor; -- 회원 테이블의 조회, 수정 권한 부여
-- 사용자 권한 부여 (보안상 위험)
GRANT SELECT, UPDATE ON DB02.member TO member; -- 자신의 회원 정보에 대한 조회 및 수정 권한 부여

-- 변경된 권한 적용
FLUSH PRIVILEGES;