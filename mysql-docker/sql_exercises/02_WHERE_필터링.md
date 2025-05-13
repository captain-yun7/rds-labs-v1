# 챕터 2: WHERE 절과 필터링

이 챕터에서는 SQL의 WHERE 절을 사용해 조건에 맞는 데이터만 필터링하는 방법을 학습합니다.

## 1. WHERE 절의 기본

WHERE 절은 SELECT 문에서 특정 조건을 만족하는 행만 선택하는 데 사용됩니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 조건;
```

## 연습 문제

### 연습 2-1: 동등 조건 사용하기

1. 카테고리 ID(category_id)가 1인 모든 제품을 조회하세요.
2. 서울에 위치한 모든 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE category_id = 1;

-- 답변 2
SELECT * FROM customers WHERE city = '서울';
```

### 연습 2-2: 비교 연산자 사용하기

1. 가격(price)이 10,000원 이상인 제품을 조회하세요.
2. 2023년 7월 10일 이후에 주문된 모든 주문을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE price >= 10000;

-- 답변 2
SELECT * FROM orders WHERE order_date > '2023-07-10';
```

## 2. 논리 연산자

WHERE 절에서 여러 조건을 결합하는 데 논리 연산자(AND, OR, NOT)가 사용됩니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 조건1 AND 조건2;
SELECT 열1, 열2, ... FROM 테이블명 WHERE 조건1 OR 조건2;
SELECT 열1, 열2, ... FROM 테이블명 WHERE NOT 조건;
```

## 연습 문제

### 연습 2-3: AND 연산자 사용하기

1. 카테고리 ID(category_id)가 3이고 가격(price)이 10,000원 이상인 제품을 조회하세요.
2. 서울에 위치하고 우편번호(postal_code)가 '06'으로 시작하는 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE category_id = 3 AND price >= 10000;

-- 답변 2
SELECT * FROM customers WHERE city = '서울' AND postal_code LIKE '06%';
```

### 연습 2-4: OR 연산자 사용하기

1. 카테고리 ID(category_id)가 1이거나 가격(price)이 50,000원 이상인 제품을 조회하세요.
2. 서울 또는 부산에 위치한 모든 공급업체를 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE category_id = 1 OR price >= 50000;

-- 답변 2
SELECT * FROM suppliers WHERE city = '서울' OR city = '부산';
```

### 연습 2-5: NOT 연산자 사용하기

1. 카테고리 ID(category_id)가 3이 아닌 모든 제품을 조회하세요.
2. 서울에 위치하지 않은 모든 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE NOT category_id = 3;

-- 답변 2
SELECT * FROM customers WHERE NOT city = '서울';
```

### 연습 2-6: 복합 조건 사용하기

1. 카테고리 ID(category_id)가 1 또는 2이고 가격(price)이 15,000원 이상인 제품을 조회하세요.
2. 서울 또는 부산에 위치하며 우편번호(postal_code)가 '0'으로 시작하는 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE (category_id = 1 OR category_id = 2) AND price >= 15000;

-- 답변 2
SELECT * FROM customers WHERE (city = '서울' OR city = '부산') AND postal_code LIKE '0%';
```

## 3. BETWEEN 연산자

BETWEEN 연산자는 값이 특정 범위 내에 있는지 확인합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 열 BETWEEN 값1 AND 값2;
```

## 연습 문제

### 연습 2-7: BETWEEN 사용하기

1. 가격(price)이 10,000원에서 20,000원 사이인 제품을 조회하세요.
2. 2023년 7월 10일부터 2023년 7월 20일 사이에 주문된 모든 주문을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;

-- 답변 2
SELECT * FROM orders WHERE order_date BETWEEN '2023-07-10' AND '2023-07-20';
```

## 4. IN 연산자

IN 연산자는 값이 지정된 목록 중 하나와 일치하는지 확인합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 열 IN (값1, 값2, ...);
```

## 연습 문제

### 연습 2-8: IN 사용하기

1. 카테고리 ID(category_id)가 1, 3, 5인 제품을 조회하세요.
2. 서울, 부산, 인천에 위치한 모든 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE category_id IN (1, 3, 5);

-- 답변 2
SELECT * FROM customers WHERE city IN ('서울', '부산', '인천');
```

## 5. LIKE 연산자

LIKE 연산자는 패턴 매칭을 사용하여 문자열을 검색합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 열 LIKE 패턴;
```

패턴에서 사용되는 와일드카드:
- %: 0개 이상의 문자를 대체
- _: 한 문자를 대체

## 연습 문제

### 연습 2-9: LIKE 연산자 사용하기

1. 제품명(product_name)이 '삼다'로 시작하는 제품을 조회하세요.
2. 제품명(product_name)에 '초콜릿'이 포함된 제품을 조회하세요.
3. 고객명(customer_name)이 '마트'로 끝나는 고객을 조회하세요.
4. 공급업체명(supplier_name)이 정확히 4글자인 공급업체를 조회하세요.

```sql
-- 답변 1
SELECT * FROM products WHERE product_name LIKE '삼다%';

-- 답변 2
SELECT * FROM products WHERE product_name LIKE '%초콜릿%';

-- 답변 3
SELECT * FROM customers WHERE customer_name LIKE '%마트';

-- 답변 4
SELECT * FROM suppliers WHERE supplier_name LIKE '____';
```

## 6. NULL 값 처리

NULL은 값이 없거나 알려지지 않았음을 나타냅니다. NULL 값을 확인하려면 IS NULL 또는 IS NOT NULL을 사용합니다.

### 기본 구문

```sql
SELECT 열1, 열2, ... FROM 테이블명 WHERE 열 IS NULL;
SELECT 열1, 열2, ... FROM 테이블명 WHERE 열 IS NOT NULL;
```

## 연습 문제

### 연습 2-10: NULL 값 확인하기

1. 주문(orders) 테이블에서 배송업체 ID(shipper_id)가 NULL인 주문을 조회하세요.
2. 공급업체(suppliers) 테이블에서 전화번호(phone)가 NULL이 아닌 공급업체를 조회하세요.

```sql
-- 답변 1
SELECT * FROM orders WHERE shipper_id IS NULL;

-- 답변 2
SELECT * FROM suppliers WHERE phone IS NOT NULL;
```

## 추가 연습 문제

다음 연습 문제들을 통해 배운 내용을 복습하세요.

### 연습 2-11: 복합 조건 활용하기

1. 카테고리 ID(category_id)가 2 또는 3이고, 가격(price)이 5,000원 이상 20,000원 이하인 제품을 조회하세요.
2. 주문일(order_date)이 2023년 7월 15일 이후이고, 고객 ID(customer_id)가 5보다 크며, 직원 ID(employee_id)가 4 또는 5인 주문을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products 
WHERE (category_id = 2 OR category_id = 3) 
  AND price BETWEEN 5000 AND 20000;

-- 답변 2
SELECT * FROM orders 
WHERE order_date > '2023-07-15' 
  AND customer_id > 5 
  AND (employee_id = 4 OR employee_id = 5);
```

### 연습 2-12: 패턴 매칭과 범위 결합하기

1. 제품명(product_name)에 '김'이 포함되어 있고, 가격(price)이 10,000원 이상인 제품을 조회하세요.
2. 고객명(customer_name)이 '마트' 또는 '슈퍼'로 끝나고, 서울 또는 부산에 위치한 고객을 조회하세요.

```sql
-- 답변 1
SELECT * FROM products 
WHERE product_name LIKE '%김%' 
  AND price >= 10000;

-- 답변 2
SELECT * FROM customers 
WHERE (customer_name LIKE '%마트' OR customer_name LIKE '%슈퍼')
  AND city IN ('서울', '부산');
```

### 연습 2-13: 실제 비즈니스 시나리오

1. 2023년 7월에 주문되고, 배송업체 ID(shipper_id)가 1인 모든 주문에 대해 주문 ID(order_id)와 주문일(order_date)을 조회하세요.
2. 주문 상세(order_details) 테이블에서 주문량(quantity)이 20 이상인 주문 상세 항목에 대해, 해당 제품의 이름과 주문량을 조회하세요. (제품 테이블과 조인 필요, 다음 챕터에서 배울 내용)

```sql
-- 답변 1
SELECT order_id, order_date FROM orders 
WHERE order_date BETWEEN '2023-07-01' AND '2023-07-31'
  AND shipper_id = 1;

-- 답변 2 (미리보기, 조인은 다음 챕터에서 배움)
SELECT p.product_name, od.quantity 
FROM order_details od
JOIN products p ON od.product_id = p.product_id
WHERE od.quantity >= 20;
```

> 참고: 두 번째 예제는 테이블 조인을 사용하며, 이는 다음 챕터에서 배울 내용입니다. 