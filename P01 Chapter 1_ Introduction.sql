-- Sushil Thapa
-- C0919991
-- 15 January, 2024
-- P01 Chapter 1: Introduction

--1
DECLARE
--this is the beginning of the executable section
    v_system_date DATE;
BEGIN
--get the current system date
    SELECT sysdate into v_system_date FROM DUAL;
--display the current system date
    DBMS_OUTPUT.PUT_LINE('Current System Date: '|| v_system_date);
END;


--2
DECLARE
    v_counter NUMBER;
BEGIN
    v_counter := v_counter + 1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
END;
--The value of v_counter will return nothing since we have no assigned v_counter anything.


--3
DECLARE
    v_counter NUMBER := 300;
BEGIN
    v_counter := v_counter + 1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
END;
--The value of v_counter will return 301 since we have assigned v_counter 300 in the beginning.


--4
DECLARE
    v_counter NUMBER NOT NULL := 0;
BEGIN
    v_counter := v_counter + 1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
END;


--5
DECLARE
    v_counter NUMBER NOT NULL := 500;
BEGIN
    v_counter := v_counter + 1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
END;


--6
DECLARE
    v_book_type VARCHAR(20) := 'fiction';
BEGIN
    DBMS_OUTPUT.PUT_LINE('The book type is '|| v_book_type || '.');
END;


--7
DECLARE
    v_text varchar(15);
BEGIN
    v_text := 'PL/SQL';
    DBMS_OUTPUT.PUT_LINE(v_text || ' is easy.');
END;


--8
DECLARE
    v_test_date DATE := '2025-01-31';
BEGIN
    DBMS_OUTPUT.PUT_LINE('The test date is ' || v_test_date || '.');
END;


--9
DECLARE
    v_today DATE := SYSDATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Today is ' || v_today || '.');
END;


--10
DECLARE
    v_default_date DATE;
BEGIN
    v_default_date := SYSDATE;
    DBMS_OUTPUT.PUT_LINE('Today is ' ||v_default_date || '.');
END;


--11
DECLARE
    TAX_RATE CONSTANT NUMBER(5,2) := 0.13;
BEGIN
    DBMS_OUTPUT.PUT_LINE('The tax rate is ' || TAX_RATE * 100 || ' percent.');
END;


--12
DECLARE
    CONSTANT1 CONSTANT VARCHAR2(22) := 'string';
BEGIN
    DBMS_OUTPUT.PUT_LINE('The value is ' || CONSTANT1 || '.');
END;
/*The original code had missing size for the VARCHAR2 datatype and lacked initialization for the constant,
causing compilation errors. The corrected version added a size and initialized the constant to resolve these issues.*/


--13
DECLARE
    v_myname VARCHAR(20) := 'Sushil'; 
BEGIN
    v_myname := 'Thapa';
    DBMS_OUTPUT.PUT_LINE('My name is ' || v_myname || '.');
END;


--14--
DECLARE
    tax_rate constant NUMBER(3,2) := 0.075;
    item_code VARCHAR2(50) := :Enter_item_code;
    item_name VARCHAR2(50) := :Enter_item_name;
    item_price NUMBER(6,2) := :Enter_price;
    v_tax NUMBER(6,2);
    v_total NUMBER(6,2);
BEGIN
    v_tax := item_price * tax_rate;
    v_total := item_price + v_tax;
    DBMS_OUTPUT.PUT_LINE('Item code: ' || item_code);
    DBMS_OUTPUT.PUT_LINE('Item name: ' || item_name);
    DBMS_OUTPUT.PUT_LINE('Price: ' || TO_CHAR(item_price, 'FM$99999.99'));
    DBMS_OUTPUT.PUT_LINE('Tax(7.5%): ' || TO_CHAR(v_tax, 'FM$99999.99'));
    DBMS_OUTPUT.PUT_LINE('Total price: ' || TO_CHAR(v_total, 'FM$99999.99'));
END;


--15--
DECLARE
    product_code VARCHAR2(50) := :Enter_product_code;
    product_name VARCHAR2(50) := :Enter_product_name;
    product_unit_price NUMBER(6,2) := :Enter_unit_price;
    product_inventory NUMBER := :Enter_inventory;
    c_total NUMBER(6,2);
BEGIN
    c_total := product_unit_price * product_inventory;
    DBMS_OUTPUT.PUT_LINE('Product code: ' || product_code);
    DBMS_OUTPUT.PUT_LINE('Product name: ' || product_name);
    DBMS_OUTPUT.PUT_LINE('Unit price: ' || TO_CHAR(product_unit_price, 'FM$99999.99'));
    DBMS_OUTPUT.PUT_LINE('Inventory: ' || TO_CHAR(product_inventory, '99999'));
    DBMS_OUTPUT.PUT_LINE('Total dollar inventory: ' || TO_CHAR(c_total, 'FM$99999.99'));
END; 