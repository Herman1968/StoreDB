SELECT DISTINCT u.*
    -> FROM users u
    -> JOIN address a ON u.user_id = a.user_id
    -> WHERE a.country = a.state
    -> ;
