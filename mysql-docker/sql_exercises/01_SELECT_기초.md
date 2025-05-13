# 챕터 1: SELECT 기초

이 챕터에서는 SQL의 가장 기본이 되는 SELECT 문의 기초를 학습합니다.

## 1. SELECT와 FROM 절

데이터베이스에서 정보를 조회하는 가장 기본적인 SQL 명령은 SELECT입니다. SELECT 문은 데이터베이스에서 데이터를 조회하고 결과를 반환합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명;
```

### 전체 열 조회

```sql
SELECT * FROM 테이블명;
```

## 연습 문제

### 연습 1-1: 기본 SELECT 사용하기

모든 고객(customers) 정보를 조회하세요.

```sql
-- 답변
SELECT * FROM customers;
```

### 연습 1-2: 특정 열 조회하기

고객(customers) 테이블에서 이름(customer_name)과 도시(city)만 조회하세요.

```sql
-- 답변
SELECT customer_name, city FROM customers;
```

### 연습 1-3: 여러 테이블 내용 확인하기

1. 모든 제품(products) 정보를 조회하세요.
2. 모든 공급업체(suppliers) 정보를 조회하세요.
3. 모든 카테고리(categories) 정보를 조회하세요.

```sql
-- 답변 1
SELECT * FROM products;

-- 답변 2
SELECT * FROM suppliers;

-- 답변 3
SELECT * FROM categories;
```

## 2. SELECT DISTINCT

중복된 결과를 제거하고 고유한 값만 조회하려면 DISTINCT 키워드를 사용합니다.

### 기본 구문

```sql
SELECT DISTINCT 열1, 열2, ... FROM 테이블명;
```

## 연습 문제

### 연습 1-4: DISTINCT 사용하기

1. 주문(orders)에서 고유한 고객 ID(customer_id)를 조회하세요.
2. 제품(products)에서 고유한 카테고리 ID(category_id)를 조회하세요.

```sql
-- 답변 1
SELECT DISTINCT customer_id FROM orders;

-- 답변 2
SELECT DISTINCT category_id FROM products;
```

### 연습 1-5: 중복 제거로 분석하기

1. 고객들이 위치한 고유한 도시(city) 목록을 조회하세요.
2. 공급업체들이 위치한 고유한 국가(country) 목록을 조회하세요.

```sql
-- 답변 1
SELECT DISTINCT city FROM customers;

-- 답변 2
SELECT DISTINCT country FROM suppliers;
```

## 3. 결과 정렬 (ORDER BY)

조회 결과를 특정 열을 기준으로 정렬하려면 ORDER BY 절을 사용합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 ORDER BY 열1 [ASC|DESC], 열2 [ASC|DESC], ...;
```

- ASC: 오름차순 정렬 (기본값)
- DESC: 내림차순 정렬

## 연습 문제

### 연습 1-6: 단일 열로 정렬하기

1. 제품(products)을 가격(price)의 오름차순으로 정렬하여 조회하세요.
2. 직원(employees)을 생년월일(birth_date)의 내림차순으로 정렬하여 조회하세요.

```sql
-- 답변 1
SELECT * FROM products ORDER BY price ASC;

-- 답변 2
SELECT * FROM employees ORDER BY birth_date DESC;
```

### 연습 1-7: 여러 열로 정렬하기

1. 제품(products)을 카테고리 ID(category_id)의 오름차순, 가격(price)의 내림차순으로 정렬하여 조회하세요.
2. 고객(customers)을 국가(country)의 오름차순, 도시(city)의 오름차순으로 정렬하여 조회하세요.

```sql
-- 답변 1
SELECT * FROM products ORDER BY category_id ASC, price DESC;

-- 답변 2
SELECT * FROM customers ORDER BY country ASC, city ASC;
```

### 연습 1-8: 실용적인 정렬 활용하기

1. 제품(products)에서 제품명(product_name)과 가격(price)을 조회하고, 가격이 높은 순서대로 정렬하세요.
2. 고객(customers)에서 국가(country), 도시(city), 고객명(customer_name)을 조회하고, 국가별, 도시별로 정렬하세요.

```sql
-- 답변 1
SELECT product_name, price FROM products ORDER BY price DESC;

-- 답변 2
SELECT country, city, customer_name FROM customers ORDER BY country, city;
```

## 4. SELECT TOP (LIMIT)

결과 집합에서 지정된 수의 레코드만 반환하려면 LIMIT을 사용합니다.

### 기본 구문 (MySQL)

```sql
SELECT 열1, 열2, ... FROM 테이블명 LIMIT 숫자;
```

## 연습 문제

### 연습 1-9: 상위 레코드 조회하기

1. 가장 비싼 상위 5개 제품을 조회하세요.
2. 가장 최근에 태어난 3명의 직원을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- 답변 2
SELECT * FROM employees ORDER BY birth_date DESC LIMIT 3;
```

### 연습 1-10: 응용하기

1. 제품 이름(product_name)과 가격(price)을 조회하되, 가장 저렴한 10개 제품만 표시하세요.
2. 가장 최근 주문된 5개의 주문(orders)을 조회하세요.

```sql
-- 답변 1
SELECT product_name, price FROM products ORDER BY price ASC LIMIT 10;

-- 답변 2
SELECT * FROM orders ORDER BY order_date DESC LIMIT 5;
```

## 추가 연습 문제

다음 연습 문제들을 통해 배운 내용을 복습하세요.

### 연습 1-11: 여러 개념 조합하기

1. 공급업체(suppliers)에서 국가(country)별로 고유한 도시(city) 목록을 조회하고, 국가와 도시 순으로 정렬하세요.

2. 제품(products)에서 카테고리 ID(category_id)가 3인 제품들의 이름(product_name)과 가격(price)을 조회하고, 가격이 낮은 순으로 정렬한 후 상위 3개만 표시하세요.

```sql
-- 답변 1
SELECT DISTINCT country, city FROM suppliers ORDER BY country, city;

-- 답변 2
SELECT product_name, price FROM products WHERE category_id = 3 ORDER BY price ASC LIMIT 3;
```

> 참고: WHERE 절은 다음 챕터에서 배우지만, 두 번째 예제에서는 간단하게 사용해 보았습니다. 

## 추가 연습 문제

다음 추가 문제를 풀어보세요:

### 연습 1-12: 직원 정보 조회하기

1. 직원(employees)의 이름(name)과 생년월일(birth_date)을 조회하세요.
2. 직원(employees)을 이름(name) 순으로 정렬하여 조회하세요.
3. 가장 나이가 많은 직원 3명의 이름(name)과 생년월일(birth_date)을 조회하세요.

```sql
-- 답변 1
SELECT name, birth_date FROM employees;

-- 답변 2
SELECT * FROM employees ORDER BY name ASC;

-- 답변 3
SELECT name, birth_date FROM employees ORDER BY birth_date ASC LIMIT 3;
``` 