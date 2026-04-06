insert into Suppliers (supplier_name, contact_name, phone, country) 
values
('British Home Goods Ltd','Oliver Bennett','+44201234567','United Kingdom'),
('Nordic Gifts Supply Co','Emma Johansson','+46812345678','Sweden'),
('EuroDecor Wholesale','Pierre Dubois','+33123456789','France'),
('Artisan Craft Suppliers','Sarah Thompson','+44207654321','United Kingdom'),
('Global Novelty Imports','Liam O Brien','+35312345678','Ireland');


insert into Customers (customer_id, first_name, last_name, email, phone_number, registration_date, country)
values
(17850, 'James', 'Wilson', 'james.wilson@gmail.com', '+447911123456', '2010-11-15', 'United Kingdom'),
(13047, 'Sophie', 'Clarke', 'sophie.clarke@outlook.com', '+447922234567', '2010-10-20', 'United Kingdom'),
(12583, 'Liam', 'Johnson', 'liam.johnson@gmail.com', '+447933345678', '2010-09-05', 'United Kingdom'),
(15100, 'Emma', 'Davies', 'emma.davies@yahoo.com', '+447944456789', '2010-08-12', 'United Kingdom'),
(17420, 'Oliver', 'Brown', 'oliver.brown@gmail.com', '+447955567890', '2010-11-01', 'United Kingdom');


insert into Products (product_name, category, price, stock, supplier_id)
values
('White Hanging Heart T-Light Holder', 'Home Decor', 2.55, 120, 1),
('White Metal Lantern', 'Home Decor', 3.39, 85, 1),
('French Enamel Butter Dish', 'Kitchen & Dining', 8.50,  35, 3),
('Vintage Union Jack Mug', 'Kitchen & Dining', 4.95, 100, 1),
('Hand Warmer Union Jack', 'Gifts & Novelties', 1.85, 200, 5),
('Set 7 Babushka Nesting Boxes', 'Gifts & Novelties', 7.65,  30, 2),
('Christmas Tree Star Topper', 'Seasonal & Festive', 5.50,  90, 2),
('Advent Calendar Gingham Sack', 'Seasonal & Festive', 3.95,  65, 4),
('Craft Stickers Alphabet Set', 'Stationery & Craft', 2.25, 110, 5),
('Paisley Design Notebook A5', 'Stationery & Craft', 3.75,  80, 3);


insert into Orders (order_id, order_date, total_amount, o_status, customer_id)
values
(536365, '2010-12-01', 55.22, 'Delivered', 17850),
(536366, '2010-12-01', 22.20, 'Delivered', 17850),
(536367, '2010-12-01', 38.75, 'Delivered', 13047),
(536368, '2010-12-02', 47.50, 'Delivered', 12583),
(536369, '2010-12-02', 19.90, 'Shipped',   15100),
(536370, '2010-12-03', 63.40, 'Delivered', 17420),
(536371, '2010-12-03', 28.15, 'Delivered', 13047),
(536372, '2010-12-04', 15.30, 'Cancelled', 12583),
(536373, '2010-12-04', 82.60, 'Delivered', 15100),
(536374, '2010-12-05', 44.25, 'Shipped',   17850),
(536375, '2010-12-05', 31.80, 'Pending',   13047),
(536376, '2010-12-06', 57.90, 'Delivered', 17850);


insert into Order_Details (order_id, product_id, quantity, price_each)
values
# Order 536365 (James Wilson)
(536365, 1, 6, 2.55),
(536365, 2, 6, 3.39),
# Order 536366 (James Wilson)
(536366, 3, 3, 8.50),
# Order 536367 (Sophie Clarke)
(536367, 7, 4, 5.50),
(536367, 8, 3, 3.95),
# Order 536368 (Liam Johnson)
(536368, 1, 5, 2.55),
(536368, 6, 2, 7.65),
# Order 536369 (Emma Davies)
(536369, 9, 6, 2.25),
# Order 536370 (Oliver Brown)
(536370, 3, 4, 8.50),
(536370, 7, 5, 5.50),
# Order 536372 (Cancelled)
(536372, 4, 2, 4.95),
# Order 536373 (Emma Davies)
(536373, 6, 3, 7.65),
# Order 536374 (James Wilson)
(536374, 9, 5, 2.25),
# Order 536375 (Pending)
(536375, 1, 4, 2.55),
# Order 536376 (James Wilson)
(536376, 7, 6, 5.50);


insert into Transactions (transaction_date, payment_method, amount, order_id)
values
('2010-12-01', 'Credit Card',   55.22, 536365),
('2010-12-01', 'PayPal',        22.20, 536366),
('2010-12-01', 'Credit Card',   38.75, 536367),
('2010-12-02', 'Bank Transfer', 47.50, 536368),
('2010-12-02', 'PayPal',        19.90, 536369),
('2010-12-03', 'Credit Card',   63.40, 536370),
('2010-12-03', 'Bank Transfer', 28.15, 536371),
('2010-12-04', 'Credit Card',   82.60, 536373),
('2010-12-05', 'PayPal',        44.25, 536374),
('2010-12-06', 'Credit Card',   57.90, 536376);






