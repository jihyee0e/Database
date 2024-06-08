-- Active: 1717684814906@@127.0.0.1@3306@DB02
CREATE TABLE instructor (
    instructor_id CHAR(100) PRIMARY KEY,
    instructor_password VARCHAR(64) NOT NULL,
    instructor_nickname VARCHAR(25) NOT NULL,
    instructor_name CHAR(10) NOT NULL,
    instructor_age TINYINT UNSIGNED NOT NULL,
    instructor_phone VARCHAR(20) NOT NULL,
    instructor_publicContact VARCHAR(20) NOT NULL,
    instructor_email VARCHAR(100),
    instructor_introduce VARCHAR(100),
    instructor_photo BLOB,
    instructor_account VARCHAR(64) NOT NULL,
    instructor_salary INT UNSIGNED NOT NULL
);

CREATE TABLE category (
    category_id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    category_name CHAR(10) NOT NULL
);

CREATE TABLE class (
    class_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    class_introduce VARCHAR(255) NOT NULL,
    class_location VARCHAR(255) NOT NULL,
    class_price INT UNSIGNED NOT NULL,
    class_parking BOOLEAN COMMENT '1 : 가능 0 : 불가능',
    class_limit TINYINT UNSIGNED NOT NULL,
    class_ageLimit TINYINT UNSIGNED,
    class_takenTime SMALLINT UNSIGNED NOT NULL,
    class_photo BLOB,
    instructor_classesPerMonth SMALLINT UNSIGNED NOT NULL,
    category_id TINYINT UNSIGNED NOT NULL,
    instructor_id CHAR(100) NOT NULL,
    Foreign Key (category_id) REFERENCES category(category_id),
    Foreign Key (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE member (
    member_id CHAR(100) PRIMARY KEY,
    member_password VARCHAR(64) NOT NULL,
    member_nickname VARCHAR(25) NOT NULL,
    member_name CHAR(10) NOT NULL,
    member_phone VARCHAR(20) NOT NULL,
    member_birth DATE NOT NULL,
    member_sex BOOLEAN NOT NULL COMMENT '0 : male 1 : female',
    member_email VARCHAR(100) NOT NULL,
    member_photo BLOB,
    member_code CHAR(8) NOT NULL,
    member_signDate DATETIME NOT NULL,
    member_point INT UNSIGNED
);

CREATE TABLE classAsk (
    classAsk_id INT UNSIGNED PRIMARY KEY,
    classAsk_content VARCHAR(500) NOT NULL,
    classAsk_date DATE NOT NULL,
    class_id INT UNSIGNED,
    member_id CHAR(100),
    FOREIGN KEY (class_id) REFERENCES class(class_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

CREATE TABLE classAnswer (
    classAsk_id INT UNSIGNED PRIMARY KEY,
    classAnswer_content VARCHAR(500) NOT NULL,
    classAnswer_date DATE NOT NULL,
    FOREIGN KEY (classAsk_id) REFERENCES classAsk(classAsk_id)
);

CREATE TABLE reservationAsk (
    reservationAsk_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    reservationAsk_date DATE NOT NULL,
    reservationAsk_reserveDatetime DATETIME NOT NULL,
    reservationAsk_headCount TINYINT UNSIGNED NOT NULL,
    reservationAsk_isConfirmed BOOLEAN COMMENT '1 : 확정 0 : 미확정',
    class_id INT UNSIGNED,
    member_id CHAR(100),
    Foreign Key (class_id) REFERENCES class(class_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

CREATE TABLE reservationAnswer (
    reservationAsk_id INT UNSIGNED PRIMARY KEY,
    reservationAnswer_isConfirmed BOOLEAN NOT NULL COMMENT '1 : 승인 0 : 미승인',
    reservationAnswer_rejectReason VARCHAR(500) NOT NULL,
    Foreign Key (reservationAsk_id) REFERENCES reservationAsk(reservationAsk_id)
);

CREATE TABLE groupAsk (
    groupAsk_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    groupAsk_date DATE NOT NULL,
    groupAsk_reservationDatetime DATETIME NOT NULL,
    groupAsk_reservationHeadCount TINYINT UNSIGNED NOT NULL,
    groupAsk_takenTime SMALLINT UNSIGNED NOT NULL,
    groupAsk_maxPrice INT UNSIGNED NOT NULL,
    groupAsk_request VARCHAR(500),
    groupAsk_isConfirmed BOOLEAN NOT NULL COMMENT '1 : 확정 0 : 미확정',
    member_id CHAR(100),
    Foreign Key (member_id) REFERENCES member(member_id)
);

CREATE TABLE groupAnswer (
    groupAsk_id INT UNSIGNED PRIMARY KEY,
    groupAnswer_date DATE NOT NULL,
    groupAnswer_price INT UNSIGNED NOT NULL,
    groupAnswer_note VARCHAR(500),
    groupAnswer_isConfirmed BOOLEAN NOT NULL COMMENT '1 : 승인 0 : 미승인',
    instructor_id CHAR(100),
    Foreign Key (groupAsk_id) REFERENCES groupAsk(groupAsk_id),
    Foreign Key (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE schedule (
    schedule_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    schedule_datetime DATETIME NOT NULL,
    schedule_headcount TINYINT UNSIGNED NOT NULL,
    class_id INT UNSIGNED,
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE reservation (
    reservation_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    reservation_datetime DATETIME NOT NULL,
    reservation_headcount TINYINT UNSIGNED NOT NULL,
    schedule_id INT UNSIGNED,
    member_id CHAR(100),
    FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

CREATE TABLE paymentMethod (
    paymentMethod_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    paymentMethod_name CHAR(10) NOT NULL,
    rewarding_percentage DECIMAL(4, 3) NOT NULL
);

CREATE TABLE payment (
    reservation_id INT UNSIGNED PRIMARY KEY,
    pay_coupon INT UNSIGNED NOT NULL,
    pay_point INT UNSIGNED NOT NULL,
    pay_cost INT UNSIGNED NOT NULL,
    paymentMethod_id INT UNSIGNED,
    pay_complete BOOLEAN NOT NULL COMMENT '1 : 완료 0 : 미완료',
    pay_token VARCHAR(255) NOT NULL,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id),
    FOREIGN KEY (paymentMethod_id) REFERENCES paymentMethod(paymentMethod_id)
);


CREATE TABLE rewardingPoint (
    reservation_id INT UNSIGNED PRIMARY KEY,
    rewarding_point INT UNSIGNED NOT NULL,
    rewarding_date DATE NOT NULL,
    extinction_date DATE NOT NULL,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
);

CREATE TABLE review (
    reservation_id INT UNSIGNED PRIMARY KEY,
    review_satisfaction TINYINT UNSIGNED NOT NULL DEFAULT 100,
    review_level CHAR(5) NOT NULL COMMENT '쉬워요/보통이에요/어려워요',
    review_explanation CHAR(5) NOT NULL COMMENT '부족했어요/충분했어요',
    review_result CHAR(7) NOT NULL COMMENT '별로에요/마음에 들어요',
    review_description TEXT NOT NULL,
    review_photo BLOB,
    review_isReported BOOLEAN DEFAULT 0 COMMENT '1 : 신고 0 : 미신고',
    review_recommendation SMALLINT UNSIGNED DEFAULT 0,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
);

CREATE TABLE couponInfo (
    coupon_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    coupon_negoPrice INT UNSIGNED NOT NULL,
    coupon_name VARCHAR(20) NOT NULL,
    coupon_validTime SMALLINT UNSIGNED NOT NULL,
    coupon_priceLimit MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    coupon_detail VARCHAR(100)
);

CREATE TABLE coupon (
    coupon_id INT UNSIGNED PRIMARY KEY,
    member_id CHAR(100),
    coupon_startDate DATETIME NOT NULL,
    coupon_isExpired BOOLEAN NOT NULL DEFAULT 0 COMMENT '1 : 만료 0 : 유효',
    coupon_isUsed BOOLEAN NOT NULL DEFAULT 0 COMMENT '1 : 사용 0 : 미사용',
    FOREIGN KEY (coupon_id) REFERENCES couponInfo(coupon_id)
);
