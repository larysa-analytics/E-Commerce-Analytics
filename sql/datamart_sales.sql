SELECT 
    date(s.order_date, 'start of month') AS period, 
    c.customer_country,
    c.customer_state,
    p.brand,
    p.product_category,
    s.sales_channel,
    COUNT(DISTINCT s.order_id) AS total_orders,
    SUM(o.quantity) AS total_units_sold,
    ROUND(SUM(o.gross_sales), 2) AS total_gross_sales,
    ROUND(SUM(o.discount_amount), 2) AS total_discounts,
    ROUND(SUM(o.net_sales), 2) AS total_net_sales,
    ROUND(SUM(o.shipping_cost), 2) AS total_shipping_cost,
    ROUND(SUM(o.product_cost), 2) AS total_product_cost,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM ecommerce_sales s
JOIN orders o ON s.order_id = o.order_id
JOIN product p ON o.product_id = p.product_id
JOIN customer c ON s.customer_id = c.customer_id
WHERE s.order_status != 'Cancelled'
GROUP BY 
    date(s.order_date, 'start of month'),
    c.customer_country,
    c.customer_state,
    p.brand,
    p.product_category,
    s.sales_channel;
