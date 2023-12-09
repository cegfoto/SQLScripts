
select sum(value) as movimentacao_total from financial_movements;
select sum(CASE WHEN value>0 THEN value ELSE 0 END) total_entrada from financial_movements;
select sum(CASE WHEN value<0 THEN value ELSE 0 END) total_saida from financial_movements;
select sum(value) from financial_movements where id_type_movements = 8;

select sum(value) from financial_movements where id_type_movements in (3,18);
select sum(value) from financial_movements where id_type_movements in (1);


select *  from financial_movements where id_type_movements in (3,18);

select sum(CASE WHEN value<0 THEN value ELSE 0 END) as movimentacao_total from financial_movements where id_type_movements not in (1,3,9,18);

select *  from financial_movements where id_type_movements not in (1,3,9,18) and value < 0;