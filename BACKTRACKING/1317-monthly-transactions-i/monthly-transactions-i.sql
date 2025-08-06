SELECT substring(trans_date,1,7) as month,
        country,
        count(state) as trans_count,
        sum(state="approved") as approved_count,
        sum(amount) as trans_total_amount,
        sum(if(state="approved",amount,0)) as approved_total_amount
FROM Transactions
GROUP BY month,country;

