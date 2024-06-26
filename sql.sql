ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 새로운 사용자 계정 생성 (sys 계정으로 진행)
CREATE USER lsjProject IDENTIFIED BY lsj1234;

-- 사용자 계정 권한 부여 설정
GRANT RESOURCE, CONNECT TO lsjProject;

-- 객체가 생성될 수 있는 공간 할당량 지정
ALTER USER lsjProject DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;

---------------------------------------------------------------------------
CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(50)		NOT NULL,
	"MEMBER_PW"	VARCHAR2(100)		NOT NULL,
	"MEMBER_NAME" VARCHAR2(30) NOT NULL,
	"MEMBER_EMAIL" VARCHAR2(100) NOT NULL,
	"MEMBER_ADDRESS" VARCHAR2(200) NOT NULL,
	"ENROLL_DATE"	DATE	DEFAULT SYSDATE NOT NULL,
	"MEMBER_DEL_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원 번호(SEQ_MEMBER_NO)';

COMMENT ON COLUMN "MEMBER"."MEMBER_ID" IS '회원 아이디';

COMMENT ON COLUMN "MEMBER"."MEMBER_PW" IS '회원 비밀번호';

COMMENT ON COLUMN "MEMBER"."MEMBER_NAME" IS '회원 이름';

COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '회원 이메일';

COMMENT ON COLUMN "MEMBER"."MEMBER_ADDRESS" IS '회원 주소';

COMMENT ON COLUMN "MEMBER"."ENROLL_DATE" IS '회원 가입일';

COMMENT ON COLUMN "MEMBER"."MEMBER_DEL_FL" IS '탈퇴여부(N:탈퇴X, Y: 탈퇴O)';

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_NO"
);
-- 탈퇴여부 CHECK 제약 조건
ALTER TABLE "MEMBER" ADD CONSTRAINT "CH_MEMBER_DEL_FL" 
CHECK("MEMBER_DEL_FL" IN ('N', 'Y'));


-- 시퀀스 생성
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE;

-- 샘플 계정 추가
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user01', 'pass01'
	, '유저일', 'user01@naver.com', '서울시 광진구'
	, DEFAULT, DEFAULT);

-- 샘플 계정 추가
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user02', 'pass02'
	, '유저이', 'user02@naver.com', '서울시 송파구'
	, DEFAULT, DEFAULT);

SELECT * FROM "MEMBER";

DELETE FROM "MEMBER" WHERE MEMBER_NO = 4;


COMMIT;
ROLLBACK;

DROP TABLE "MEMBER";

DROP SEQUENCE SEQ_MEMBER_NO;

SELECT MEMBER_ID, MEMBER_NAME
FROM "MEMBER"
WHERE MEMBER_NO = '1';

UPDATE "MEMBER" SET
		MEMBER_DEL_FL = 'N'
		WHERE MEMBER_NO = '2';




CREATE TABLE "MOVIE" (
	"MOVIE_NO" NUMBER NOT NULL,
	"MOVIE_TITLE" VARCHAR2(300) NOT NULL,
	"RESERVATION_DATE" VARCHAR2(200) NOT NULL,
	"RESERVATION_LOCATION" VARCHAR2(500) NOT NULL,
	"RESERVATION_TIME"	VARCHAR2(300) NOT NULL,
	"RESERVATION_SEAT" VARCHAR2(100) NOT NULL,
	"PRICE" NUMBER NOT NULL,
	"RESERVATION_DEL_FL" CHAR(1) DEFAULT 'N'	NOT NULL,
	"MEMBER_NO" NUMBER NOT NULL
);

DROP TABLE "MOVIE";


COMMENT ON COLUMN "MOVIE"."MOVIE_TITLE" IS '영화 제목';

COMMENT ON COLUMN "MOVIE"."RESERVATION_DATE" IS '예매 날짜';

COMMENT ON COLUMN "MOVIE"."RESERVATION_LOCATION" IS '극장 위치';

COMMENT ON COLUMN "MOVIE"."RESERVATION_TIME" IS '예매 시간';

COMMENT ON COLUMN "MOVIE"."RESERVATION_SEAT" IS '예매 좌석';

COMMENT ON COLUMN "MOVIE"."PRICE" IS '가격';

COMMENT ON COLUMN "MOVIE"."RESERVATION_DEL_FL" IS '삭제 여부(N : 삭제X , Y : 삭제O)';

COMMENT ON COLUMN "MOVIE"."MEMBER_NO" IS '예매한 회원 번호';

-- 시퀀스 생성
CREATE SEQUENCE SEQ_MOVIE_NO NOCACHE;

DROP SEQUENCE SEQ_MOVIE_NO;


ALTER TABLE "MOVIE" ADD CONSTRAINT "FK_MEMBER_MOVIE" FOREIGN KEY (
	"MEMBER_NO"
)

REFERENCES "MEMBER" (
	"MEMBER_NO"
);

-- 샘플 투두 추가
INSERT INTO "MOVIE"
VALUES(SEQ_MOVIE_NO.NEXTVAL, '파묘', '3월 30일', '강남', '19:20', 'A3', 13000, DEFAULT, 1);

COMMIT;

SELECT * FROM "MOVIE";

DELETE FROM "MOVIE" WHERE MEMBER_NO = 1;

SELECT MOVIE_TITLE, RESERVATION_DATE, RESERVATION_LOCATION, RESERVATION_TIME, RESERVATION_SEAT 
		FROM "MOVIE"
		WHERE MEMBER_NO = 1
		AND RESERVATION_DEL_FL = 'N';