-- 데이터베이스 생성
-- CREATE 테이블명;

-- 데이터베이스 사용
USE 테이블명;

-- 사용자 테이블 생성
CREATE TABLE `user` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NULL,
    `password` VARCHAR(255) NULL,
    `email` VARCHAR(255) NULL,
    `create` DATETIME,
    `update` DATETIME
);

-- 차량 동작 로그 테이블 생성
CREATE TABLE `operation` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `date` DATE NULL,
    `time` TIME NULL,
    `content` TEXT NULL,
    `location` VARCHAR(255) NULL
);

-- 음성 테이블 생성
CREATE TABLE `voice` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `text` TEXT NULL,
    `voice` TEXT NULL,
    `read` VARCHAR(255) NULL
);

-- 경로 테이블 생성
CREATE TABLE `route` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `current_point` VARCHAR(255) NULL,
    `start_point` VARCHAR(255) NULL,
    `end_point` VARCHAR(255) NULL,
    `locations` LONGTEXT NULL,
    `distance` VARCHAR(255) NULL,
    `route_time` INT NULL,
    `all` LONGTEXT NULL
);

-- 교통 정보 테이블 생성
CREATE TABLE `traffic` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NULL,
    `time` TIME NULL,
    `start_point` VARCHAR(255) NULL,
    `end_point` VARCHAR(255) NULL,
    `content` TEXT NULL,
    `rank` INT NULL
);

-- 설정 테이블 생성
CREATE TABLE `set` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `transport` INT NULL,
    `toll` INT NULL,
    `highway` INT NULL
);

-- POI 테이블 생성
CREATE TABLE `poi` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `location` VARCHAR(255) NULL,
    `name` VARCHAR(255) NULL,
    `content` TEXT NULL,
    `category` VARCHAR(255) NULL,
    `hour` VARCHAR(255) NULL,
    `type` INT NULL
);

-- 알림 테이블 생성
CREATE TABLE `alert` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `date` DATE NULL,
    `time` TIME NULL,
    `content` TEXT NULL,
    `read` VARCHAR(255) NULL,
    `location` VARCHAR(255) NULL,
    `rank` INT NULL
);

-- 목록 테이블 생성
CREATE TABLE `list` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user` INT NULL,
    `question` TEXT NULL,
    `result` TEXT NULL
);

-- 마크 테이블 생성
CREATE TABLE `mark` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `start_point` VARCHAR(255) NULL,
    `end_point` VARCHAR(255) NULL,
    `content` TEXT NULL
);