select  b.FAMILY_NAME as SALES_REP, c.REGION, d.FAMILY_NAME AS CUSTOMER, e.COUNTRY, 
SUM(a.UNIT_COST * a.QUANTITY_SOLD) AS TOTAL_SALES
from
FACT_PRODUCT_SALES a,
DIM_REP b,
DIM_REGION c,
DIM_CUSTOMER d,
DIM_COUNTRY e
where
a.REP_SK = b.REP_SK
and
a.REGION_SK = c.REGION_SK
and
a.CUSTOMER_SK = d.CUSTOMER_SK
and
a.COUNTRY_SK = e.COUNTRY_SK
group by 
b.FAMILY_NAME,
c.REGION,
d.FAMILY_NAME,
e.COUNTRY
order by b.FAMILY_NAME;
