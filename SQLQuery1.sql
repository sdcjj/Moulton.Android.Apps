SELECT TOP 50 PERCENT * FROM table1  --ȡ��50%�ļ�¼
SELECT * FROM table1 WHERE Name LIKE '_dmin'   --ȡ��һ���ַ�֮����dmin�ļ�¼
SELECT * FROM table1 WHERE Name LIKE '[ALN]%' --ȡ��A��L��N��ͷ�ļ�¼
SELECT * FROM table1 WHERE Name LIKE '[^ALN]%'  --ȡ����A��L��N��ͷ�ļ�¼  
SELECT TOP 1 * FROM table1 ORDER BY NEWID()  --���ȡһ����¼
SELECT NAME FROM SYSCOLUMNS WHERE Id=OBJECT_ID('����')  --��ȡ�������� 

SELECT * FROM
    (SELECT *,ROW_NUMBER() OVER(ORDER BY Id) AS rownum FROM table1) a 
     WHERE rownum BETWEEN 3 AND 5   --��ҳ������1 MSSQL����
SELECT * FROM
	(SELECT TOP 3 b.* FROM (SELECT TOP 5 Id FROM table1 ORDER BY Id) a,table1 b
	WHERE b.Id=a.Id  ORDER BY a.Id DESC) a ORDER BY Id  --��ҳ������2 ͨ��