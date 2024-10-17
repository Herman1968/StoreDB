CREATE FUNCTION calculate_order_total(order_id INT)
    -> RETURNS DECIMAL(10,2)
    -> BEGIN
    ->     DECLARE total DECIMAL(10,2);
    ->     SELECT SUM(p.price) INTO total
    ->     FROM orders_products op
    ->     JOIN product p ON op.product_id = p.product_id
    ->     WHERE op.order_id = order_id;
    ->     RETURN total;
    -> END //
