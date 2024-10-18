SELECT p.*
    -> FROM product p
    -> LEFT JOIN orders_products op ON p.product_id = op.product_id
    -> LEFT JOIN orders o ON op.order_id = o.order_id
    -> WHERE o.order_id IS NULL OR o.status = 'error';
