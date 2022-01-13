select * from Clients
--columns
select Clients, Sex, Status from Clients
--filter
select Client, Sex, Status from Clients where Status = 'Silver'
--or
select Client, Sex, Status from Clients where Status = 'Silver' OR Status = 'Platinum'
--in
select Client, Sex, Status from Clients where Status IN ('Silver','Platinum')
--like
select Client, Sex, Status from Clients where Client like '%Alb%'
-->
select * from Sales where Total > 6000
--order
select Client from Clients
order by Client

select Client from Clients
order by Client DESC

select Client, Status from Clients
order by Client desc, Status 
--BETWEEN
select * from Sales where Total between 6000 and 8000
--limit
select  * from Sales limit 10
--distinct
select distinct Status from Clients
--agregation
select count(*) from Sales
--agregation with  where
select count(*) from Sales where Total > 6000
--grouping
select IDSeller, count(IDSeller) from Sales group by IDSeller
--having
select IDSeller, count(IDSeller) from Sales group by IDSeller
having count(IDSeller) > 40
--join with where
select Name, Total from Sales, Sellers
where Sales.IDSeller = Sellers.IDSeller
--inner join
select count(*) from Salesinner join Sellers on(Sales.IDSeller = Sellers.IDSeller )
--left join
select count(*)  from Sales
left join Sellers on 
(Sales.IDSeller = Sellers.IDSeller)
--right join
INSERT INTO Sellers(Name) VALUES ('Fernando Amaral');
select count(*)  from Sales right join Sellers on( Sales.IDSeller = Sellers.IDSeller );
--alias from tables
select Client, Total from Sales v
inner join Clients c on (v.IDClient = c.IDClient)














