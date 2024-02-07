create table transaction (
	 transaction_id int4 
	,product_id int4
	,customer_id int4
	,transaction_date date
	,online_order varchar(10)
	,order_status varchar(10)
	,adress_id int4
)

create table product (
	 product_id int4
	,brand text
	,product_line varchar(10)
	,product_class varchar(10)
	,product_size varchar(10)
	,list_price float4
	,standard_cost numeric(6,2)
)

create table adress (
	 adress_id int4
	,postcode int4
	,state text
	,country text
	,property_valuation int4
)

create table customer (
	 customer_id int4
	,first_name text
	,last_name text
	,gender varchar(6)
	,DOB date
	,job_title text
	,job_industry_category text
	,wealth_segment text
	,deceased_indicator varchar(3)
	,owns_car varchar(3)
)

alter table adress add adress text

alter table customer add primary key (customer_id);
alter table transaction add primary key (transaction_id);
alter table product add primary key (product_id, list_price);
alter table adress add primary key (adress_id);


ALTER TABLE public.adress ALTER COLUMN postcode SET NOT NULL;
ALTER TABLE public.adress ALTER COLUMN state SET NOT NULL;
ALTER TABLE public.adress ALTER COLUMN country SET NOT NULL;
ALTER TABLE public.adress ALTER COLUMN property_valuation SET NOT NULL;
ALTER TABLE public.adress ALTER COLUMN adress SET NOT NULL;


ALTER TABLE public.customer ALTER COLUMN customer_id SET NOT NULL;
ALTER TABLE public.customer ALTER COLUMN first_name SET NOT NULL;
ALTER TABLE public.customer ALTER COLUMN gender SET NOT NULL;

ALTER TABLE public.product ALTER COLUMN product_id SET NOT NULL;
ALTER TABLE public.product ALTER COLUMN list_price SET NOT NULL;

ALTER TABLE public."transaction" ALTER COLUMN transaction_id SET NOT NULL;
ALTER TABLE public."transaction" ALTER COLUMN product_id SET NOT NULL;
ALTER TABLE public."transaction" ALTER COLUMN customer_id SET NOT NULL;
ALTER TABLE public."transaction" ALTER COLUMN transaction_date SET NOT NULL;
ALTER TABLE public."transaction" ALTER COLUMN order_status SET NOT NULL;
ALTER TABLE public."transaction" ALTER COLUMN adress_id SET NOT NULL;

alter table transaction drop column adress_id
alter table customer add column adress_id text
