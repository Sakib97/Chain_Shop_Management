create or replace package globalPackage as 
		
	procedure transfer_employee
	(site_no in number, v_eid in number, v_ename in varchar2);
	
		
	  procedure add_product
	( id in product.pid%TYPE,
	  name in product.pname%TYPE,
	  avail in product.unit_available%TYPE,
	  price in product.unit_price%TYPE,
	  siteno in number) ;
	  
	  
	  function get_total_sell_of_a_date(input_date in date)
	return number ;
	
	procedure give_discount
	(site_no in number, day_no in number, parcentage in number);
end globalPackage; 
/