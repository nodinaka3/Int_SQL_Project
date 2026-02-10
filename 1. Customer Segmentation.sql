
WITH Customer_ltv AS (
    SELECT
        customerkey,
        name,
        sum(total_net_revenue) AS total_ltv
    FROM
        cohort_analysis
    GROUP BY
        customerkey,
        name
),
Customer_segments AS (
    SELECT
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY total_ltv) AS ltv_25th_percentile,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY total_ltv) AS ltv_75th_percentile
    FROM
        Customer_ltv
),
Segment_values AS ( 
        SELECT
            c.*,
            CASE
                WHEN c.total_ltv < cs.ltv_25th_percentile THEN '1-Low Value'
                WHEN c.total_ltv <= cs.ltv_75th_percentile THEN '2-Medium Value'
                ELSE '3-High Value'
            END AS customer_segment
        FROM
            Customer_ltv c,
            Customer_segments cs
)
SELECT 
    customer_segment,
    SUM(total_ltv) AS total_ltv,
    COUNT(customerkey) AS customer_count,
    SUM(total_ltv)/COUNT(customerkey) AS avg_ltv
FROM
    Segment_values
GROUP BY
    customer_segment
ORDER BY
    customer_segment DESC