# MySQL Docker 환경을 활용한 SQL 연습

이 프로젝트는 MySQL 데이터베이스 환경을 Docker 컨테이너로 구성하여 SQL 쿼리 연습을 할 수 있는 환경을 제공합니다.

## 목차

1. [환경 설정](#환경-설정)
2. [데이터베이스 접속](#데이터베이스-접속)
3. [SQL 연습 챕터](#sql-연습-챕터)
4. [데이터베이스 구조](#데이터베이스-구조)

## 환경 설정

### 요구사항

- Docker 및 Docker Compose 설치
- MySQL 클라이언트 도구 (선택 사항, 예: MySQL Workbench, DBeaver 등)

### 설치 및 실행

1. 프로젝트 클론 또는 다운로드

2. Docker 컨테이너 시작
```
docker-compose up -d
```

3. 컨테이너 상태 확인
```
docker ps
```

## 데이터베이스 접속

### 접속 정보

- 호스트: localhost
- 포트: 3306
- 데이터베이스: mini_shop
- 사용자: root
- 비밀번호: sesac7mz

### MySQL CLI를 통한 접속

```
docker exec -it mysql-mini-shop mysql -u root -psesac7mz
```

## SQL 연습 챕터

`sql_exercises` 디렉토리에 SQL 연습 문제와 해답이 챕터별로 정리되어 있습니다. 연습 문제를 풀어보고 해답을 확인하며 SQL 쿼리 작성 능력을 향상시키세요.

### 챕터 목록

1. [SELECT 기초](sql_exercises/01_SELECT_기초.md) - SELECT 문의 기본 사용법, DISTINCT, ORDER BY, LIMIT 등
2. [WHERE 필터링](sql_exercises/02_WHERE_필터링.md) - 조건을 사용한 데이터 필터링, 비교 연산자, 논리 연산자, LIKE, IN, BETWEEN 등
3. [조인과 테이블 결합](sql_exercises/03_조인과_테이블_결합.md) - 다양한 JOIN 유형, 테이블 결합 방법
4. [그룹함수 및 집계](sql_exercises/04_그룹함수_및_집계.md) - GROUP BY, HAVING, 집계 함수, WITH ROLLUP 등
5. [서브쿼리 활용](sql_exercises/05_서브쿼리_활용.md) - 다양한 유형의 서브쿼리, CTE, 중첩 서브쿼리 등

## 데이터베이스 구조

mini_shop 데이터베이스는 다음과 같은 테이블로 구성됩니다:

- categories: 제품 카테고리 정보
- customers: 고객 정보
- employees: 직원 정보
- orders: 주문 정보
- order_details: 주문 상세 정보
- products: 제품 정보
- shippers: 배송업체 정보
- suppliers: 공급업체 정보

각 테이블의 구조와 관계에 대한 자세한 정보는 `mock-data/mini_shop_erd.txt` 파일을 참조하세요. 