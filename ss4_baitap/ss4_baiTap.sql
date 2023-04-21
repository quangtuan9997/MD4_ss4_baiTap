use QuanLySinhVien;
select * from `subject` where (credit=(select max(Credit) from `subject`));

select * from subject sb
join `mark` m on sb.subId = m.subid
 where m.mark = (select max(mark) from `mark`);
 
 select s.*, avg(m.mark) as `avg` from Student s
 join mark m on s.studentId=m.studentId  
 group by s.studentId, s.studentName order by `avg`;