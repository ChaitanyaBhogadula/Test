/*Farmer table creation*/

Create table farmer(name varchar2(30),email varchar2(40),phone varchar2(10),addr varchar2(100),pwd varchar2(20));
/*Stored Procedure to insert a record into database table*/

Create or replace procedure insert_farmer(name varchar2,email varchar2,phone varchar2,addr varchar2,pwd varchar2) is

Begin
Insert into farmer values(name,email,phone,addr,pwd);
Commit;
End;
/



create or replace function verifylogin(mail varchar2,pw varchar2) return number is
r number; 

/*Function to verify Login :*/
begin
select count(*) into r from farmer where email=mail and pwd=pw;
if r>0 then
return 1;
else
return 0;
end if;
end;
/
