USE foodbuddy2;

INSERT INTO `role`(role_name)
VALUES
('ROLE_USER'),
('ROLE_SELLER'),
('ROLE_ADMIN');

-- password - password1, password2.... 


INSERT INTO app_user(email, password, username)
VALUES
-- sellers
('alice@example.com', '$2a$10$GkeGb8wyJ/inHo2YP1/j4eY/fTILPy.7HGvOttTPnaa56pkBTuNcC', 'alice123'),
('bob@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'bobby'),
('carol@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'carol456'),
('dave@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'dave789'),
('eve@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'eve101'),
-- users
('frank@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'frank_the_tank'),
('grace@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'gracie'),
('henry@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'henry789'),
('irene@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'irene_999'),
-- admins
('jack@example.com', '$2a$04$n8ZTlLLifWMMR9ChwsfsmeIZSGNub/e6Rf.fh/0NhspMXb.PHXHRG', 'jack_sparrow');

-- id 1,2,3,4,5 - sellers (ROLE_USER + ROLE_SELLER)
-- id 6,7,8, 9 - users (ROLE_USER)
-- id 10 - admins (ROLE_USER + ROLE_SELLER + ROLE_ADMIN)
INSERT INTO user_role(user_id, role_id)
VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),
(1,2),(2,2),(3,2),(4,2),(5,2),

(6,1),(7,1),(8,1),(9,1),

(10,1),(10,2),(10,3);

INSERT INTO address (address_line1, address_line2, address_line3)
VALUES
('123 Main St', 'Apt 4B', 'Springfield IL 62704'),
('456 Elm St', 'Suite 500', 'San Francisco CA 94107'),
('789 Oak St', 'Building 2', 'New York NY 10001'),
('101 Pine St', 'Floor 3', 'Seattle WA 98101'),
('202 Maple St', 'Room 12', 'Austin TX 73301');


INSERT INTO shop (shop_name, latitude, longitude, address_id, owner_id, phone_number)
VALUES
('Green Grocers', 37.7749, -122.4194, 1, 1, '0771234567'),
('Tech Haven', 34.0522, -118.2437, 2, 2, '0772345678'),
('Book Nook', 40.7128, -74.0060, 3, 3, '0773456789'),
('Gourmet Bites', 47.6062, -122.3321, 4, 4, '0774567890'),
('Fashion Forward', 30.2672, -97.7431, 5, 5, '0775678901');

INSERT INTO category(category_name, image)
VALUES
('caregory1', "default1.png"),
('caregory2', "default2.png"),
('caregory3', "default2.png");

INSERT INTO product
(category_id, shop_id, product_name, original_price, discounted_price, discount_percentage, quantity, valid_until, description, image)
VALUES
(1, 1, 'Margherita Pizza', 12.00, 10.00, 16.67, 30, '2024-07-31 23:59:59.000000', 'Classic Margherita pizza with fresh mozzarella, basil, and a rich tomato sauce.', 'margherita_pizza.png'),
(1, 1, 'Caesar Salad', 8.00, 6.40, 20.00, 50, '2024-07-31 23:59:59.000000', 'Crisp romaine lettuce tossed with Caesar dressing, croutons, and Parmesan cheese.', 'caesar_salad.png'),
(1, 2, 'Spaghetti Carbonara', 15.00, 12.00, 20.00, 40, '2024-07-31 23:59:59.000000', 'Creamy spaghetti carbonara made with pancetta, egg, and Parmesan cheese.', 'spaghetti_carbonara.png'),
(2, 2, 'Chicken Tikka Masala', 18.00, 14.40, 20.00, 25, '2024-07-31 23:59:59.000000', 'Grilled chicken tikka simmered in a creamy tomato sauce with aromatic spices.', 'chicken_tikka_masala.png'),
(2, 3, 'Beef Burger', 10.00, 8.00, 20.00, 30, '2024-07-31 23:59:59.000000', 'Juicy beef burger topped with lettuce, tomato, cheese, and special sauce.', 'beef_burger.png'),
(2, 3, 'Vegetable Stir Fry', 12.00, 9.60, 20.00, 35, '2024-07-31 23:59:59.000000', 'Assorted fresh vegetables stir-fried with soy sauce and garlic.', 'vegetable_stir_fry.png'),
(3, 4, 'Grilled Salmon', 20.00, 16.00, 20.00, 20, '2024-07-31 23:59:59.000000', 'Perfectly grilled salmon fillet served with a side of roasted vegetables.', 'grilled_salmon.png'),
(3, 4, 'Taco Plate', 14.00, 11.20, 20.00, 40, '2024-07-31 23:59:59.000000', 'Three soft tacos filled with your choice of beef, chicken, or veggies, served with salsa and guacamole.', 'taco_plate.png'),
(3, 4, 'Pad Thai', 13.00, 10.40, 20.00, 30, '2024-07-31 23:59:59.000000', 'Traditional Thai stir-fried noodles with shrimp, tofu, peanuts, and bean sprouts.', 'pad_thai.png'),
(3, 4, 'Chocolate Cake', 7.00, 5.60, 20.00, 50, '2024-07-31 23:59:59.000000', 'Rich and moist chocolate cake topped with creamy chocolate ganache.', 'chocolate_cake.png');
