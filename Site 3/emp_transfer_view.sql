create or replace view emp_view as
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log a
join emp_delete_log@site2 b
on a.empid = b.empid 
union
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log a
join emp_delete_log@site3 b
on a.empid = b.empid 
union
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log@site2 a
join emp_delete_log b
on a.empid = b.empid  
union
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log@site2 a
join emp_delete_log@site3 b
on a.empid = b.empid  
union
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log@site3 a
join emp_delete_log b
on a.empid = b.empid  
union
select a.empid, a.sitenew, b.siteold,b.log_date from  emp_insert_log@site3 a
join emp_delete_log@site2 b
on a.empid = b.empid;

select * from emp_view;
