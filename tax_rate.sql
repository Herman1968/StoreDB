SELECTo.order_ id, o.total, 0 AS tax_rate, (o.total * 0 / 100) AS ax_amountt
    -> FROM orders o;
