DECLARE
 SNAME VARCHAR2(10);
 SROLL  NUMBER(6);
BEGIN
 SROLL:=&ROLL_NO;
 SELECT NAME INTO SNAME FROM STUDENT WHERE ROLLNO=SROLL;
 DBMS_OUTPUT.PUT_LINE('NAME= '||SNAME||' ROLL NO= '||SROLL);
EXCEPTION
 WHEN NO_DATA_FOUND THEN
  DBMS_OUTPUT.PUT_LINE('NOT EXISTS');
END;

