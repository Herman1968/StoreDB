SELECT o.order_id, COUNT(op.product_id) AS total_sold
    -> FROM orders o
    -> JOIN orders_products op ON o.order_id = op.order_id
    -> GROUP BY o.order_id
    -> ORDER BY total_sold DESC
    -> LIMIT 3;
