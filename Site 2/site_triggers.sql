SET SERVEROUTPUT ON;


create or replace trigger sell_trigger
after insert on records
begin
	dbms_output.put_line('Product sold successfully !');
end;
/ 

create or replace trigger product_trigger
after insert or update on product
begin
	dbms_output.put_line('Product Updated successfully !');
end;
/ 
 