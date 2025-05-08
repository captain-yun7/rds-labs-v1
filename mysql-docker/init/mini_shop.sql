SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+09:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `mini_shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mini_shop`;
--
-- Database: `mini_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, '음료', '생수, 커피, 차, 맥주 및 음료수'),
(2, '양념/소스', '간장, 고추장, 된장, 소스 및 양념'),
(3, '디저트/간식', '과자, 초콜릿, 빵 및 사탕'),
(4, '유제품', '우유, 치즈, 요구르트'),
(5, '곡물/시리얼', '쌀, 밀가루, 라면, 국수 및 시리얼'),
(6, '육류', '소고기, 돼지고기, 닭고기'),
(7, '채소/과일', '신선한 채소 및 과일'),
(8, '해산물', '생선 및 해산물');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, '강남마트', '김지영', '테헤란로 123', '서울', '06235', '대한민국'),
(2, '부산식자재', '이민수', '해운대로 456', '부산', '48300', '대한민국'),
(3, '인천푸드', '박서연', '송도대로 789', '인천', '21984', '대한민국'),
(4, '대구마켓', '정현우', '동대구로 101', '대구', '41585', '대한민국'),
(5, '광주유통', '최지원', '상무대로 202', '광주', '61945', '대한민국'),
(6, '대전식품', '윤소영', '대덕대로 303', '대전', '34126', '대한민국'),
(7, '울산슈퍼', '임준호', '삼산로 404', '울산', '44719', '대한민국'),
(8, '경기마트', '한지민', '동탄대로 505', '화성', '18455', '대한민국'),
(9, '강원푸드', '송민재', '춘천로 606', '춘천', '24358', '대한민국'),
(10, '제주식자재', '오유진', '중문로 707', '제주', '63535', '대한민국'),
(11, '서울프레시', '강동훈', '강남대로 808', '서울', '06010', '대한민국'),
(12, '부산유통', '배수지', '광안리해변로 909', '부산', '48096', '대한민국'),
(13, '인천마켓', '권태준', '청라대로 1010', '인천', '22338', '대한민국'),
(14, '경남유통', '백지영', '창원대로 1111', '창원', '51430', '대한민국'),
(15, '전북마켓', '조현우', '전주로 1212', '전주', '54995', '대한민국'),
(16, '충남유통', '홍수민', '천안대로 1313', '천안', '31144', '대한민국'),
(17, '경북마트', '류지원', '포항로 1414', '포항', '37748', '대한민국'),
(18, '충북식품', '남윤아', '청주로 1515', '청주', '28525', '대한민국'),
(19, '경기푸드', '김준영', '수원로 1616', '수원', '16491', '대한민국'),
(20, '전남유통', '이슬기', '여수로 1717', '여수', '59675', '대한민국');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) VALUES
(1, '김', '영수', '1980-05-20', 'EmpID1.pic', '서울대학교 경영학과 졸업, 다수의 영업 교육 이수 및 우수 영업사원 수상 경력'),
(2, '이', '지은', '1985-07-15', 'EmpID2.pic', '연세대 국제무역학과 석사, 신입사원 교육 프로그램 담당, 영어와 일본어 능통'),
(3, '박', '민준', '1978-03-10', 'EmpID3.pic', '고려대 통계학과 졸업, 마케팅팀 10년 근무 후 영업팀으로 이동, 데이터 분석 전문가'),
(4, '최', '수진', '1982-11-25', 'EmpID4.pic', '카이스트 MBA 과정 수료, 고객 관계 관리 전문가, 이전 스타트업 창업 경험 있음'),
(5, '정', '태영', '1975-09-30', 'EmpID5.pic', '서강대 경제학 전공, 영업관리 20년 경력, 한국 마케팅 협회 정회원, 해외 시장 개척 경험 풍부'),
(6, '강', '하윤', '1988-01-12', 'EmpID6.pic', '한양대 심리학과 졸업, 소비자 행동 분석 전문, 고객 서비스 교육 프로그램 개발'),
(7, '윤', '성민', '1983-06-28', 'EmpID7.pic', '중앙대 경영정보학과 졸업, IT 시스템 도입으로 영업 프로세스 개선 담당, 업무 자동화 전문가'),
(8, '장', '미영', '1979-04-18', 'EmpID8.pic', '이화여대 국제학부 졸업, 해외 고객 관리 담당, 영어, 중국어 능통, 문화간 커뮤니케이션 전문'),
(9, '임', '준호', '1990-12-05', 'EmpID9.pic', '부산대 물류학과 졸업, 신선식품 물류 최적화 담당, 공급망 관리 전문가'),
(10, '한', '소희', '1987-08-15', 'EmpID10.pic', '동국대 식품영양학과 졸업, 제품 품질 관리 담당, 식품 안전 인증 전문가');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(10248, 1, 5, '2023-07-04', 3),
(10249, 3, 6, '2023-07-05', 1),
(10250, 5, 4, '2023-07-08', 2),
(10251, 7, 3, '2023-07-08', 1),
(10252, 9, 4, '2023-07-09', 2),
(10253, 2, 3, '2023-07-10', 2),
(10254, 4, 5, '2023-07-11', 2),
(10255, 6, 9, '2023-07-12', 3),
(10256, 8, 3, '2023-07-15', 2),
(10257, 10, 4, '2023-07-16', 3),
(10258, 12, 1, '2023-07-17', 1),
(10259, 14, 4, '2023-07-18', 3),
(10260, 16, 4, '2023-07-19', 1),
(10261, 18, 4, '2023-07-19', 2),
(10262, 20, 8, '2023-07-22', 3),
(10263, 11, 9, '2023-07-23', 3),
(10264, 13, 6, '2023-07-24', 3),
(10265, 15, 2, '2023-07-25', 1),
(10266, 17, 3, '2023-07-26', 3),
(10267, 19, 4, '2023-07-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
(11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
(20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
(26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
(29, 10257, 77, 15),
(30, 10258, 2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, '삼다수', 1, 1, '2L x 6병', 9800),
(2, '맥콜', 1, 1, '500ml x 20캔', 15000),
(3, '청정원 양조간장', 2, 2, '1.7L x 2병', 12500),
(4, '고추장 태양초', 2, 2, '500g x 3개', 18000),
(5, '순창 된장', 2, 2, '1kg x 2개', 15500),
(6, '오뚜기 마요네즈', 3, 2, '500g x 2개', 8000),
(7, '제철 배', 3, 7, '1.5kg 박스', 25000),
(8, '조청', 3, 2, '1kg x 2통', 22000),
(9, '한우 등심', 4, 6, '1kg 팩', 75000),
(10, '고등어', 4, 8, '2마리 팩', 12000),
(11, '서울우유', 5, 4, '1L x 6팩', 14500),
(12, '동원 구운 김', 5, 8, '5g x 40봉', 18000),
(13, '제주 갈치', 6, 8, '특대 2마리', 45000),
(14, '두부', 6, 7, '300g x 5모', 8500),
(15, '양반 김', 6, 8, '10장 x 10봉', 12000),
(16, '초코파이', 7, 3, '12개입 x 4박스', 16000),
(17, '양고기', 7, 6, '냉동 500g', 18500),
(18, '제주 전복', 7, 8, '10미', 35000),
(19, '크라운 산도', 8, 3, '12개입 x 5박스', 7500),
(20, '허니버터칩', 8, 3, '60g x 10봉', 12000),
(21, '쿠키런 쿠키', 8, 3, '45g x 12개', 9500),
(22, '옛날과자', 9, 3, '500g 봉지', 4500),
(23, '쌀국수', 9, 5, '500g x 5봉', 12000),
(24, '칠성사이다', 10, 1, '500ml x 12캔', 8500),
(25, '초코맛 아이스크림', 11, 3, '1.5L 통', 5500),
(26, '젤리', 11, 3, '50g x 20개', 15000),
(27, '밀크초콜릿', 11, 3, '100g x 10개', 22000),
(28, '김치', 12, 7, '5kg 포기', 35000),
(29, '양념 돼지갈비', 12, 6, '1kg 팩', 25000),
(30, '고등어 통조림', 13, 8, '200g x 10캔', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, '한진택배', '1588-0011'),
(2, '대한통운', '1588-1255'),
(3, '롯데택배', '1588-2121');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, '제주음료', '고동현', '제주시 첨단로 123', '제주', '63309', '대한민국', '064-123-4567'),
(2, '청정원', '박지훈', '서울시 중구 소공로 45', '서울', '04637', '대한민국', '02-777-8888'),
(3, '농심식품', '이서연', '안양시 동안구 흥안대로 123', '안양', '14051', '대한민국', '031-333-4444'),
(4, '한우마을', '정성훈', '횡성군 횡성읍 문화로 234', '횡성', '25228', '대한민국', '033-555-6666'),
(5, '서울유업', '김미란', '양주시 광적면 부흥로 345', '양주', '11409', '대한민국', '031-777-8899'),
(6, '제주식품', '이상철', '제주시 조천읍 신흥로 456', '제주', '63253', '대한민국', '064-555-6677'),
(7, '롯데식품', '한지원', '서울시 영등포구 양평로 567', '서울', '07258', '대한민국', '02-333-4455'),
(8, '크라운제과', '남지영', '인천시 연수구 컨벤시아대로 678', '인천', '21998', '대한민국', '032-777-8899'),
(9, '오리온', '윤도현', '군포시 공단로 789', '군포', '15849', '대한민국', '031-444-5566'),
(10, '롯데칠성', '강지영', '안성시 공도읍 서동대로 890', '안성', '17599', '대한민국', '031-888-9900'),
(11, '빙그레', '최준서', '남양주시 다산중앙로 901', '남양주', '12244', '대한민국', '031-333-9988'),
(12, '종가집', '이민지', '광주시 북구 첨단과기로 1012', '광주', '61238', '대한민국', '062-444-5566'),
(13, '동원F&B', '박태준', '창원시 성산구 중앙대로 1123', '창원', '51501', '대한민국', '055-777-8800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `ShipperID` (`ShipperID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10268;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 