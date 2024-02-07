--display all of the customer data
select * from customer;

--display all of the agent data
select * from agents;

--Display customer names and grades
select CUST_NAME, GRADE from customer;

--display agent code, name and working area
select AGENT_CODE, AGENT_NAME, WORKING_AREA from agents;

--display order number, order amount, and order date
select ORD_NUM, ORD_AMOUNT, ORD_DATE from orders;

--show all customer code, name, country, and phone number, for all customers from the US
select CUST_NAME, CUST_NAME, CUST_CITY, CUST_COUNTRY, PHONE_NO from customer where CUST_COUNTRY = "USA";

--Show agent names and phone numbers for agents from Bangalore
select AGENT_NAME, PHONE_NO from agents where WORKING_AREA = "Bangalore";

--Show orders with advance amounts of $100
select * from orders where ADVANCE_AMOUNT = 100;

--Show the names of grade 2 customers
select CUST_NAME from customer where GRADE = 2;

--Show all customer information for customers from New York
select * from customer where CUST_CITY = "New York";

--Show all agent information for agents who work in London with commission rates greater than 0.12
select * from agents where WORKING_AREA = 'London' and COMMISSION > 0.12;

--Show order number, agent code, and customer code for orders with advance amount less than or equal to $500, and order amount greater than or equal to $1500.
select ORD_NUM, AGENT_CODE, CUST_CODE from orders where ADVANCE_AMOUNT <= 500 and ORD_AMOUNT >= 1500;

--Show customer code, customer name, agent code, and outstanding amount for customers with outstanding amounts greater than $6000 and pay amount less tha or equal to $3000
select CUST_CODE, CUST_NAME, AGENT_CODE, OUTSTANDING_AMT from customer where OUTSTANDING_AMT > 6000 and PAYMENT_AMT <= 3000;

--Show order numbers for order amounts less than $1000
select ORD_NUM from orders where ORD_AMOUNT < 1000;

--Show customer names from India with outstanding amounts less than $10,000
select CUST_NAME from customer where CUST_COUNTRY = "India" and OUTSTANDING_AMT < 10000;
