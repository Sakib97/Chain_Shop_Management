--get_total_sell_of_a_date

/*
set serveroutput on;
set verify off;

declare
	v_date date := '&date' ; 
	sell_price number ; 
	
			
begin
	
	sell_price := get_total_sell_of_a_date(v_date); 
	dbms_output.put_line('Total sell of '||v_date||' is: '||sell_price||' Taka');

	
	
end;
/
*/


--transfer employee 

/*
set serveroutput on;
set verify off;

declare
		site_no number := &site_no; 
		eid number := &eid; 
		ename varchar2(30) := '&name' ;
begin
	
	 globalPackage.transfer_employee(site_no,eid,ename);

	
	
end;
/
*/


--add_product

/*
set serveroutput on;
set verify off;

declare
	pid product.pid%TYPE:= &pid;
	pname product.pname%TYPE := '&pname';
	available product.unit_available%TYPE := &avaliable;
	price product.unit_price%TYPE := &price;
	siteno number :=  &site_no;
			
begin
	
	globalPackage.add_product(pid, pname, available, price,siteno);

	
	
end;
/
*/



--give discount

/*
set serveroutput on;
set verify off;

declare
			
begin
	
	globalPackage.give_discount(3,2,50);

	
	
end;
/
*/



--sell_product

/*
set serveroutput on;
set verify off;

declare
	pid number := &pid;
	cid number := &cid;
	cname varchar2(30) := '&cname';
	amount number := &amount;
	buy_date varchar2(30):= '&date';
	eid number := &eid;
	
			
begin
	
	localPackage.sell_product(pid,cid,cname,amount,buy_date,eid);

	
	
end;
/
*/


--update product

/*
set serveroutput on;
set verify off;

declare
	pid number := &pid;
	amount number := &amount;
			
begin
	
	localPackage.update_product(pid,amount);

	
	
end;
/
*/



--get top grossing product

/*
set serveroutput on;
set verify off;

declare
			
begin
	
	localPackage.get_top_grossing_product(1);

	
	
end;
/
*/