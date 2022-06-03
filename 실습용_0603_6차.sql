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

-- department_id���� null�� �Էµɼ� ����.
UPDATE departments
SET department_id = null
WHERE department_name='Sample_Dept';

DELETE from departments 
where department_name = 'Sample_Dept';

--�������� �̿�
DELETE FROM departments
WHERE department_id IN (SELECT department_id 
                        FROM departments
                        WHERE department_name = 'Sample_Dept');
commit;

-- 1.�⺻Ű ���� ����
INSERT INTO departments
VALUES (100,'Sample_Dept',200,1700);
-- 100�� �̹� ������̿��� ���� �߻�

-- 2.�ܷ�Ű ���� ���� : �� ���� �θ� ���̺��� ���� ���� ���� �ݵ�� ����
INSERT INTO departments(department_id, department_name, manager_id,location_id)
VALUES (273,'Sample_Dept',200,111);

SELECt *
FROM departments;

-- 3.����Ű : �ߺ��� ������� ������ null���� ���
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary)
VALUES (207,'first_name','last_name','SKING','111.11.11',to_date('030617','YYMMDD'),'IT_PROG',6000);
--SKING�� �ߺ���

SELECT
    *
FROM employees
where email= 'SKING';


--4.NOT NULL : null���� ������� �ʴ´�
INSERT INTO departments(department_id, department_name, manager_id,location_id)
VALUES (273,null,200,111);

-- 5. CHECK :������ ���ǵ� ������ ���� ���
-- �ǳ��� salary���� 0�� �ʰ��ϴ� ���� ����Ѵ�.
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary)
VALUES (209,'first_name','last_name','TEST','111.11.11',to_date('030617','YYMMDD'),'IT_PROG',0);


-- ���̺� ����
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

-- �����ͺ��� ���� ũ�⸦ �۰� �����ϸ� ����
-- ALTER table sample_product MODIFY(product_name valchar(5)); ���� �߻�~~ ������ ���� ����~~!

ALTER table sample_product rename COLUMN factory to factory_name;

-- ������
ALTER table sample_product DROP COLUMN factory_name;

-- �������
TRUNCATE TABLE sample_product;

-- ���̺����
DROP TABLE sample_product;
