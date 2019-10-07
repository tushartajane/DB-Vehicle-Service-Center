#Reports

# 1.Get the count  of vehicles service per brand in each month .
select v.brand_name,month(Visit_Date) as Month, count(*) from vehicle v join servicing_visit sv on v.identifier=sv.vehicle_id
group by v.brand_name, month(Visit_Date);

2.How many bike serviced by the worker per month
select st.name,month(Visit_Date) as Month, count(*) from vehicle v
join servicing_visit sv on v.identifier=sv.vehicle_id
join staff st on st.identifier=sv.Serviced_By
group by sv.Serviced_By, month(Visit_Date);

3. Get the worker name who serviced the maximum bike

select *
from (
	select st.name, Serviced_By as Vehicle_Serviced, max(sv.Serviced_By) as Max_serviced
	from vehicle v
	join servicing_visit sv on v.identifier=sv.vehicle_id
	join staff st on st.identifier=sv.Serviced_By
	group by sv.Serviced_By) Tb
WHERE Vehicle_Serviced


SELECT
    sales_employee,
    fiscal_year,
    sale,
    RANK() OVER (PARTITION BY
                     fiscal_year
                 ORDER BY
                     sale DESC
                ) sales_rank
FROM
    sales;


4. Get the count of customer visit in a year and the total cost he/she paid
5.Which procedure mostly used by the customer last 3 months
6.Summary reports of all the servicing visit for last month (Customer name, Licence No, Total Cost and Procedure Used)
7. Get the count of most service done by each worker in the month
