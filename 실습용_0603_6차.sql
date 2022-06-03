UPDATE departments
SET (manager_id,location_id) = (SELECT manager_id,location_id
                                FROM departments
                                where department_id = 40
                                )
where department_name = 'Sample_Dept';

SELECT manager_id,location_id
FROM departments
where department_id = 40;
                      

SELECT
    *
FROM departments
where department_name='Sample_Dept';

-- department_id에는 null이 입력될수 없다.
UPDATE departments
SET department_id = null
WHERE department_name='Sample_Dept';

DELETE from departments 
where department_name = 'Sample_Dept';

--서브쿼리 이용
DELETE FROM departments
WHERE department_id IN (SELECT department_id 
                        FROM departments
                        WHERE department_name = 'Sample_Dept');
commit;

-- 1.기본키 제약 조건
INSERT INTO departments
VALUES (100,'Sample_Dept',200,1700);
-- 100은 이미 사용중이여서 에러 발생

-- 2.외래키 제약 조건 : 열 값이 부모 테이블의 참조 열의 값을 반드시 참조
INSERT INTO departments(department_id, department_name, manager_id,location_id)
VALUES (273,'Sample_Dept',200,111);

SELECt *
FROM departments;

-- 3.유일키 : 중복은 허락하지 않지만 null값은 허용
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary)
VALUES (207,'first_name','last_name','SKING','111.11.11',to_date('030617','YYMMDD'),'IT_PROG',6000);
--SKING이 중복됨

SELECT
    *
FROM employees
where email= 'SKING';


--4.NOT NULL : null값을 허용하지 않는다
INSERT INTO departments(department_id, department_name, manager_id,location_id)
VALUES (273,null,200,111);

-- 5. CHECK :범위나 조건등 지정된 값만 허용
-- 맨끝의 salary값은 0을 초과하는 값만 허용한다.
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary)
VALUES (209,'first_name','last_name','TEST','111.11.11',to_date('030617','YYMMDD'),'IT_PROG',0);


-- 테이블 생성
CREATE TABLE sample_product
            (product_id number,
            product_name VARCHAR2(30),
            manu_date date
            );
            
INSERT INTO sample_product
VALUES (1,'television',to_date('140101','YYMMDD'));

INSERT INTO sample_product
VALUES (2,'washer',to_date('150101','YYMMDD'));

INSERT INTO sample_product
VALUES (3,'cleaner',to_date('160101','YYMMDD'));

SELECT
    *
FROM sample_product;

DELETE FROM sample_product
WHERE product_id = 2;

ALTER table sample_product ADD(factory VARCHAR2(10));

ALTER table sample_product MODIFY(factory char(8));

-- 데이터보다 열의 크기를 작게 변경하면 오류
-- ALTER table sample_product MODIFY(product_name valchar(5)); 에러 발생~~ 데이터 범위 오류~~!

ALTER table sample_product rename COLUMN factory to factory_name;

-- 열삭제
ALTER table sample_product DROP COLUMN factory_name;

-- 내용삭제
TRUNCATE TABLE sample_product;

-- 테이블삭제
DROP TABLE sample_product;
