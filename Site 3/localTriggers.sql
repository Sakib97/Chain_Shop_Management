SET SERVEROUTPUT ON;

create or replace trigger transfer_trigger_1
after insert on employee
begin
	dbms_output.put_line('New Employee inserted to site 3!');
end;
/ 


create or replace trigger transfer_trigger_2
after delete on employee
begin
	dbms_output.put_line('Employee transfered from site 3!');
end;
/ 
