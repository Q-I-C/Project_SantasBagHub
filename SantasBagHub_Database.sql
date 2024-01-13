# Remeber to change to your own name
DROP SCHEMA IF EXISTS neu_student_qi_chen_project;
CREATE SCHEMA neu_student_qi_chen_project;
USE neu_student_qi_chen_project;


CREATE TABLE Customers (
    Customer_id VARCHAR(5) NOT NULL,
    Customer_name VARCHAR(30) NOT NULL,
    Customer_age INTEGER(3) NOT NULL,
    Customer_gender VARCHAR(10) NOT NULL, 
    Customer_phone_number VARCHAR(12) NOT NULL,
    Customer_email VARCHAR(30) NOT NULL,
    PRIMARY KEY (Customer_id)
);

CREATE TABLE Products (
    Product_id VARCHAR(5) NOT NULL,
    Product_name VARCHAR(30) NOT NULL,
    Product_category VARCHAR(30) NOT NULL,
    Product_brand VARCHAR(30) NOT NULL,
    Product_description TEXT NOT NULL,
    Product_selling_price DECIMAL(10, 2) NOT NULL,
    Product_purchase_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (Product_id)
);

CREATE TABLE Ratings (
    Product_id VARCHAR(5) NOT NULL,
    Rating DECIMAL(2,1) NOT NULL,
    PRIMARY KEY (Product_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Inventory_status (
    Product_id VARCHAR(5) NOT NULL,
    Inventory_unit INTEGER(5) NOT NULL,
    PRIMARY KEY (Product_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Shipping_details (
    Shipping_details_tracking_id VARCHAR(7) NOT NULL,
    Shipping_details_address TEXT NOT NULL,
    Estimated_delivery_time DATETIME NOT NULL,
    Shipping_details_contact_number VARCHAR(12) NOT NULL,
    PRIMARY KEY (Shipping_details_tracking_id)
);

CREATE TABLE Discounts (
    Discount_id VARCHAR(7) NOT NULL,
    Discount_start_date DATETIME NOT NULL,
    Discount_end_date DATETIME NOT NULL,
    Discount_rate DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (Discount_id)
);

CREATE TABLE Payments (
    Payment_id VARCHAR(6) NOT NULL,
    Payment_type VARCHAR(20),
    PRIMARY KEY (Payment_id)
);

CREATE TABLE Orders (
    Order_id VARCHAR(6) NOT NULL,
    Customer_id VARCHAR(5) NOT NULL,
    Product_id VARCHAR(5) NOT NULL,
    Discount_id VARCHAR(7),
    Shipping_details_tracking_id VARCHAR(7),
    Payment_id VARCHAR (6),
	Order_datetime DATETIME NOT NULL,
    Order_quantity INTEGER(5) NOT NULL,
    PRIMARY KEY (Order_id, Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
    FOREIGN KEY (Discount_id) REFERENCES Discounts(Discount_id),
    FOREIGN KEY (Shipping_details_tracking_id) REFERENCES Shipping_details(Shipping_details_tracking_id),
    FOREIGN KEY (Payment_id) REFERENCES Payments(Payment_id)
);

CREATE TABLE Sales (
    Sales_id INT AUTO_INCREMENT NOT NULL,
    Order_id VARCHAR(6),
	Customer_id VARCHAR(5),
	Product_id VARCHAR(5),
    PRIMARY KEY (Sales_id),
    FOREIGN KEY (Order_id, Customer_id, Product_id) REFERENCES Orders(Order_id, Customer_id, Product_id)
);


# Inserting into Customers

INSERT INTO Customers VALUES ('M23AE', 'John Smith', 23, 'Male', '617-545-9292', 'johnsmith00@gmail.com');
INSERT INTO Customers VALUES ('F29AF', 'Emily Johnson', 29, 'Female', '617-478-1234', 'emilyj@email.com');
INSERT INTO Customers VALUES ('M35AM', 'Michael Brown', 35, 'Male', '617-232-5678', 'michaelb@email.com');
INSERT INTO Customers VALUES ('F22AS', 'Sarah Davis', 22, 'Female', '617-909-9876', 'sarahd@email.com');
INSERT INTO Customers VALUES ('M40AJ', 'James Wilson', 40, 'Male', '617-101-5432', 'jamesw@email.com');
INSERT INTO Customers VALUES ('F27AL', 'Linda Martinez', 27, 'Female', '617-545-6789', 'lindam@email.com');
INSERT INTO Customers VALUES ('M35AK', 'James Smith', 35, 'Male', '617-555-0101', 'james.smith@email.com');
INSERT INTO Customers VALUES ('F28AM', 'Maria Garcia', 28, 'Female', '617-555-0102', 'maria.garcia@email.com');
INSERT INTO Customers VALUES ('M42AH', 'David Johnson', 42, 'Male', '617-555-0103', 'david.johnson@email.com');
INSERT INTO Customers VALUES ('F22H1', 'Sophia Williams', 22, 'Female', '617-555-0104', 'sophia.williams@email.com');
INSERT INTO Customers VALUES ('M30AI', 'Liam Brown', 30, 'Male', '617-555-0105', 'liam.brown@email.com');
INSERT INTO Customers VALUES ('F26AE', 'Emma Jones', 26, 'Female', '617-555-0106', 'emma.jones@email.com');
INSERT INTO Customers VALUES ('M39AA', 'Ava Miller', 39, 'Female', '617-555-0107', 'ava.miller@email.com');
INSERT INTO Customers VALUES ('M47AO', 'Oliver Davis', 47, 'Male', '617-555-0108', 'oliver.davis@email.com');
INSERT INTO Customers VALUES ('F19AI', 'Isabella Wilson', 19, 'Female', '617-555-0109', 'isabella.wilson@email.com');
INSERT INTO Customers VALUES ('M31AE', 'Ethan Taylor', 31, 'Male', '617-555-0110', 'ethan.taylor@email.com');
INSERT INTO Customers VALUES ('F36AM', 'Mia Anderson', 36, 'Female', '617-555-0111', 'mia.anderson@email.com');
INSERT INTO Customers VALUES ('M45AN', 'Noah Martinez', 45, 'Male', '617-555-0112', 'noah.martinez@email.com');
INSERT INTO Customers VALUES ('F29AC', 'Charlotte Thomas', 29, 'Female', '617-555-0113', 'charlotte.thomas@email.com');
INSERT INTO Customers VALUES ('M52AL', 'Logan Rodriguez', 52, 'Male', '617-555-0114', 'logan.rodriguez@email.com');
INSERT INTO Customers VALUES ('F24O0', 'Amelia Hernandez', 24, 'Female', '617-555-0115', 'amelia.hernandez@email.com');
INSERT INTO Customers VALUES ('M38AL', 'Lucas Moore', 38, 'Male', '617-555-0116', 'lucas.moore@email.com');
INSERT INTO Customers VALUES ('F33AH', 'Harper Lee', 33, 'Female', '617-555-0117', 'harper.lee@email.com');
INSERT INTO Customers VALUES ('M27AA', 'Aiden King', 27, 'Male', '617-555-0118', 'aiden.king@email.com');
INSERT INTO Customers VALUES ('F41AE', 'Evelyn Scott', 41, 'Female', '617-555-0119', 'evelyn.scott@email.com');
INSERT INTO Customers VALUES ('M34AB', 'Benjamin White', 34, 'Male', '617-555-0120', 'benjamin.white@email.com');
INSERT INTO Customers VALUES ('F31AU', 'Alice Morgan', 31, 'Female', '617-455-0291', 'alice.morgan@email.com');
INSERT INTO Customers VALUES ('M28AR', 'Robert Lee', 28, 'Male', '617-478-2234', 'robert.lee@email.com');
INSERT INTO Customers VALUES ('F37AK', 'Karen White', 37, 'Female', '617-932-5689', 'karen.white@email.com');
INSERT INTO Customers VALUES ('M45AP', 'Peter Harris', 45, 'Male', '617-309-9871', 'peter.harris@email.com');
INSERT INTO Customers VALUES ('F26AJ', 'Julia Clark', 26, 'Female', '617-501-5433', 'julia.clark@email.com');
INSERT INTO Customers VALUES ('M33AA', 'Aaron Martinez', 33, 'Male', '617-845-6781', 'aaron.martinez@email.com');
INSERT INTO Customers VALUES ('F29AR', 'Rachel Lewis', 29, 'Female', '617-555-0201', 'rachel.lewis@email.com');
INSERT INTO Customers VALUES ('M36AD', 'Daniel Rodriguez', 36, 'Male', '617-555-0202', 'daniel.rodriguez@email.com');
INSERT INTO Customers VALUES ('F39AH', 'Heather Brown', 39, 'Female', '617-555-0203', 'heather.brown@email.com');
INSERT INTO Customers VALUES ('M41AR', 'Ryan Gonzalez', 41, 'Male', '617-555-0204', 'ryan.gonzalez@email.com');
INSERT INTO Customers VALUES ('F24AA', 'Angela Wright', 24, 'Female', '617-555-0205', 'angela.wright@email.com');
INSERT INTO Customers VALUES ('M38AB', 'Bruce Green', 38, 'Male', '617-555-0206', 'bruce.green@email.com');
INSERT INTO Customers VALUES ('F32AN', 'Natalie King', 32, 'Female', '617-555-0207', 'natalie.king@email.com');
INSERT INTO Customers VALUES ('M27AH', 'Henry Taylor', 27, 'Male', '617-555-0208', 'henry.taylor@email.com');
INSERT INTO Customers VALUES ('F34AD', 'Diana Adams', 34, 'Female', '617-555-0209', 'diana.adams@email.com');
INSERT INTO Customers VALUES ('M42AM', 'Adam Thompson', 42, 'Male', '617-555-0210', 'adam.thompson@email.com');
INSERT INTO Customers VALUES ('F30AS', 'Stephanie Hill', 30, 'Female', '617-555-0211', 'stephanie.hill@email.com');
INSERT INTO Customers VALUES ('M47AJ', 'Jeffrey Scott', 47, 'Male', '617-555-0212', 'jeffrey.scott@email.com');
INSERT INTO Customers VALUES ('F25AJ', 'Jessica Torres', 25, 'Female', '617-555-0213', 'jessica.torres@email.com');
INSERT INTO Customers VALUES ('M29AC', 'Christopher Allen', 29, 'Male', '617-555-0214', 'christopher.allen@email.com');
INSERT INTO Customers VALUES ('F28AO', 'Olivia Johnson', 28, 'Female', '617-555-0301', 'olivia.johnson@email.com');
INSERT INTO Customers VALUES ('M35AE', 'Ethan Martinez', 35, 'Male', '617-555-0302', 'ethan.martinez@email.com');
INSERT INTO Customers VALUES ('F22S0', 'Sophie Clark', 22, 'Female', '617-555-0303', 'sophie.clark@email.com');
INSERT INTO Customers VALUES ('M30AD', 'Dylan Edwards', 30, 'Male', '617-555-0304', 'dylan.edwards@email.com');
INSERT INTO Customers VALUES ('F26AG', 'Grace Lopez', 26, 'Female', '617-555-0305', 'grace.lopez@email.com');
INSERT INTO Customers VALUES ('M40AM', 'Samuel Hill', 40, 'Male', '617-555-0306', 'samuel.hill@email.com');
INSERT INTO Customers VALUES ('F33AF', 'Chloe Lee', 33, 'Female', '617-555-0307', 'chloe.lee@email.com');
INSERT INTO Customers VALUES ('M29AG', 'George Harris', 29, 'Male', '617-555-0308', 'george.harris@email.com');
INSERT INTO Customers VALUES ('F27AZ', 'Zoe Walker', 27, 'Female', '617-555-0309', 'zoe.walker@email.com');
INSERT INTO Customers VALUES ('M36AT', 'Tyler Young', 36, 'Male', '617-555-0310', 'tyler.young@email.com');
INSERT INTO Customers VALUES ('F31AM', 'Megan King', 31, 'Female', '617-555-0311', 'megan.king@email.com');
INSERT INTO Customers VALUES ('M38AJ', 'Jack Wright', 38, 'Male', '617-555-0312', 'jack.wright@email.com');
INSERT INTO Customers VALUES ('F24AL', 'Lily Scott', 24, 'Female', '617-555-0313', 'lily.scott@email.com');
INSERT INTO Customers VALUES ('M420M', 'Max Martin', 42, 'Male', '617-555-0314', 'max.martin@email.com');
INSERT INTO Customers VALUES ('F34AE', 'Emily Moore', 34, 'Female', '617-555-0315', 'emily.moore@email.com');
INSERT INTO Customers VALUES ('M37AM', 'Ryan Anderson', 37, 'Male', '617-555-0316', 'ryan.anderson@email.com');
INSERT INTO Customers VALUES ('F25AI', 'Isabella Thompson', 25, 'Female', '617-555-0317', 'isabella.thompson@email.com');
INSERT INTO Customers VALUES ('M32AC', 'Connor Garcia', 32, 'Male', '617-555-0318', 'connor.garcia@email.com');
INSERT INTO Customers VALUES ('F39AF', 'Abigail Robinson', 39, 'Female', '617-555-0319', 'abigail.robinson@email.com');
INSERT INTO Customers VALUES ('M28AN', 'Nathan Campbell', 28, 'Male', '617-555-0320', 'nathan.campbell@email.com');
INSERT INTO Customers VALUES ('M26AJ', 'Nathan Scott', 26, 'Male', '617-555-0501', 'nathan.scott@email.com');
INSERT INTO Customers VALUES ('F35AI', 'Isabel Carter', 35, 'Female', '617-555-0502', 'isabel.carter@email.com');
INSERT INTO Customers VALUES ('M32AM', 'Matthew Lee', 32, 'Male', '617-555-0503', 'matthew.lee@email.com');
INSERT INTO Customers VALUES ('F29AE', 'Emily Phillips', 29, 'Female', '617-555-0504', 'emily.phillips@email.com');
INSERT INTO Customers VALUES ('F40AE', 'Evelyn Brooks', 40, 'Female', '617-555-0505', 'evelyn.brooks@email.com');
INSERT INTO Customers VALUES ('M37AJ', 'Justin Cooper', 37, 'Male', '617-555-0506', 'justin.cooper@email.com');
INSERT INTO Customers VALUES ('F24AM', 'Madison Bailey', 24, 'Female', '617-555-0507', 'madison.bailey@email.com');
INSERT INTO Customers VALUES ('M31AH', 'Andrew Richardson', 31, 'Male', '617-555-0508', 'andrew.richardson@email.com');
INSERT INTO Customers VALUES ('F28AZ', 'Zoe Sanders', 28, 'Female', '617-555-0509', 'zoe.sanders@email.com');
INSERT INTO Customers VALUES ('M34AO', 'Ryan Bennett', 34, 'Male', '617-555-0510', 'ryan.bennett@email.com');
INSERT INTO Customers VALUES ('F30AL', 'Layla Woods', 30, 'Female', '617-555-0511', 'layla.woods@email.com');
INSERT INTO Customers VALUES ('M39AJ', 'Jack Morris', 39, 'Male', '617-555-0512', 'jack.morris@email.com');
INSERT INTO Customers VALUES ('F27AF', 'Ella Barnes', 27, 'Female', '617-555-0513', 'ella.barnes@email.com');
INSERT INTO Customers VALUES ('M41AB', 'Brian Patterson', 41, 'Male', '617-555-0514', 'brian.patterson@email.com');
INSERT INTO Customers VALUES ('F23AH', 'Hannah Gray', 23, 'Female', '617-555-0515', 'hannah.gray@email.com');
INSERT INTO Customers VALUES ('M33AM', 'Mason Turner', 33, 'Male', '617-555-0601', 'mason.turner@email.com');
INSERT INTO Customers VALUES ('F36AF', 'Avery Stewart', 36, 'Female', '617-555-0602', 'avery.stewart@email.com');
INSERT INTO Customers VALUES ('F27AO', 'Olivia King', 27, 'Female', '617-555-0603', 'olivia.king@email.com');
INSERT INTO Customers VALUES ('M42K0', 'Henry Garcia', 42, 'Male', '617-555-0604', 'henry.garcia@email.com');
INSERT INTO Customers VALUES ('F31AG', 'Grace Long', 31, 'Female', '617-555-0605', 'grace.long@email.com');
INSERT INTO Customers VALUES ('M29AB', 'Benjamin Adams', 29, 'Male', '617-555-0606', 'benjamin.adams@email.com');
INSERT INTO Customers VALUES ('F34AZ', 'Zoey Parker', 34, 'Female', '617-555-0607', 'zoey.parker@email.com');
INSERT INTO Customers VALUES ('M38AC', 'Lucas Carter', 38, 'Male', '617-555-0608', 'lucas.carter@email.com');
INSERT INTO Customers VALUES ('F26AL', 'Lillian Phillips', 26, 'Female', '617-555-0609', 'lillian.phillips@email.com');
INSERT INTO Customers VALUES ('M39AG', 'Gabriel Sanchez', 39, 'Male', '617-555-0610', 'gabriel.sanchez@email.com');
INSERT INTO Customers VALUES ('F24AS', 'Sophia Richardson', 24, 'Female', '617-555-0611', 'sophia.richardson@email.com');
INSERT INTO Customers VALUES ('M35AO', 'Owen Watson', 35, 'Male', '617-555-0612', 'owen.watson@email.com');
INSERT INTO Customers VALUES ('F32AC', 'Chloe James', 32, 'Female', '617-555-0613', 'chloe.james@email.com');
INSERT INTO Customers VALUES ('M28AI', 'Isaac Foster', 28, 'Male', '617-555-0614', 'isaac.foster@email.com');
INSERT INTO Customers VALUES ('F37AH', 'Hailey Anderson', 37, 'Female', '617-555-0615', 'hailey.anderson@email.com');
INSERT INTO Customers VALUES ('M30AC', 'Cameron Diaz', 30, 'Male', '617-555-0616', 'cameron.diaz@email.com');
INSERT INTO Customers VALUES ('F25AL', 'Layla Allen', 25, 'Female', '617-555-0617', 'layla.allen@email.com');
INSERT INTO Customers VALUES ('M41AM', 'Adam Reed', 41, 'Male', '617-555-0618', 'adam.reed@email.com');
INSERT INTO Customers VALUES ('F29AA', 'Ava Bell', 29, 'Female', '617-555-0619', 'ava.bell@email.com');
INSERT INTO Customers VALUES ('M33AJ', 'Jackson Baker', 33, 'Male', '617-555-0620', 'jackson.baker@email.com');

# Inserting into products

-- Decoration

INSERT INTO Products VALUES ('DEC01', 'Geometric Bookshelf', 'Christmas Decoration', 'ModernoFurnish', 'A modern bookshelf with a unique geometric design.', 159.99, 80.00);
INSERT INTO Products VALUES ('DEC02', 'Abstract Canvas Art', 'Christmas Decoration', 'ArtiqueGallery', 'A statement piece of abstract art to complement your home decor.', 120.00, 60.00);
INSERT INTO Products VALUES ('DEC03', 'Handcrafted Wooden Clock', 'Christmas Decoration', 'TimelessArt', 'Eco-friendly wooden clock with a handcrafted design.', 45.00, 22.50);
INSERT INTO Products VALUES ('DEC04', 'Essential Oil Diffuser', 'Christmas Decoration', 'ScentHarmony', 'Ultrasonic diffuser for a soothing aromatherapy experience.', 34.99, 17.49);
INSERT INTO Products VALUES ('DEC05', 'Decorative Throw Pillow', 'Christmas Decoration', 'CozyHome', 'Add a touch of comfort and style with our plush throw pillow.', 25.99, 12.99);
INSERT INTO Products VALUES ('DEC06', 'Christmas Greeting Card Set', 'Christmas Decoration', 'HolidayGreetings', 'Spread holiday cheer with our festive Christmas card set.', 9.99, 4.99);

-- Electronics

INSERT INTO Products VALUES ('ELEC1', 'Wireless Earbuds', 'Christmas Electronics', 'SoundPioneer', 'High-quality sound in a compact, wireless format.', 129.99, 64.99);
INSERT INTO Products VALUES ('ELEC2', 'Smart Fitness Watch', 'Christmas Electronics', 'HealthSync', 'Track your fitness goals with our latest smartwatch technology.', 199.99, 99.99);
INSERT INTO Products VALUES ('ELEC3', 'Ergonomic Headphones', 'Christmas Electronics', 'BeatVibe', 'Comfortable over-ear headphones with noise-cancelling feature.', 89.99, 45.00);
INSERT INTO Products VALUES ('ELEC4', 'Robotic Vacuum Cleaner', 'Christmas Electronics', 'CleanBot', 'Automated cleaning with smart space mapping technology.', 299.99, 149.99);
INSERT INTO Products VALUES ('ELEC5', 'Portable Bluetooth Speaker', 'Christmas Electronics', 'SoundSphere', 'Portable speaker with 360-degree sound projection.', 49.99, 24.99);
INSERT INTO Products VALUES ('ELEC6', 'Waterproof Smartwatch', 'Christmas Electronics', 'AquaTech', 'Durable smartwatch that’s perfect for all weather conditions.', 159.99, 79.99);

-- Beauty 

INSERT INTO Products VALUES ('B0001', 'Lipstick', 'Christmas Beauty', 'Maybelline', 'Long-lasting matte lipstick', 12.99, 5.99);
INSERT INTO Products VALUES ('B0002', 'Mascara', 'Christmas Beauty', 'L\'Oreal', 'Volumizing mascara for bold lashes', 9.99, 4.50);
INSERT INTO Products VALUES ('B0003', 'Facial Cleanser', 'Christmas Beauty', 'Neutrogena', 'Gentle foaming cleanser for all skin types', 8.49, 3.99);
INSERT INTO Products VALUES ('B0004', 'Shampoo', 'Christmas Beauty', 'Pantene', 'Repair and protect shampoo for healthy hair', 7.99, 4.25);
INSERT INTO Products VALUES ('B0005', 'Perfume', 'Christmas Beauty', 'Calvin Klein', 'Eau de parfum with floral notes', 49.99, 25.00);
INSERT INTO Products VALUES ('B0006', 'Nail Polish', 'Christmas Beauty', 'OPI', 'High-quality nail polish in various shades', 6.99, 2.75);
INSERT INTO Products VALUES ('B0007', 'Moisturizer', 'Christmas Beauty', 'Cetaphil', 'Daily hydration for soft and smooth skin', 11.49, 6.00);
INSERT INTO Products VALUES ('B0008', 'Hair Dryer', 'Christmas Beauty', 'Conair', 'Ionic hair dryer for quick drying', 34.99, 19.50);
INSERT INTO Products VALUES ('B0009', 'Eye Shadow Palette', 'Christmas Beauty', 'Urban Decay', 'Versatile eyeshadow colors for various looks', 29.99, 15.75);
INSERT INTO Products VALUES ('B0010', 'Sunscreen', 'Christmas Beauty', 'La Roche-Posay', 'Broad-spectrum SPF for sun protection', 16.99, 8.50);

-- Outfit

INSERT INTO Products VALUES ('XMAS1', 'Santa Claus Suit', 'Christmas Outfits', 'North Pole Creations', 'A classic Santa Claus costume for the holidays.', 49.99, 25.00);
INSERT INTO Products VALUES ('XMAS2', 'Elf Costume', 'Christmas Outfits', 'Santas Workshop', 'Dress up as Santas helper with this cute elf costume.', 29.99, 15.00);
INSERT INTO Products VALUES ('XMAS3', 'Reindeer Onesie', 'Christmas Outfits', 'Rudolph & Co.', 'Stay warm and cozy in this adorable reindeer onesie.', 39.99, 20.00);
INSERT INTO Products VALUES ('XMAS4', 'Snowman Sweater', 'Christmas Outfits', 'Winter Wonderland Knits', 'A festive snowman sweater for holiday parties.', 34.99, 18.00);
INSERT INTO Products VALUES ('XMAS5', 'Christmas Tree Dress', 'Christmas Outfits', 'Festive Fashions', 'Dazzle in this sparkling Christmas tree-themed dress.', 54.99, 28.00);
INSERT INTO Products VALUES ('XMAS6', 'Santa Hat', 'Christmas Outfits', 'North Pole Creations', 'Complete your Santa look with this classic red hat.', 9.99, 5.00);
INSERT INTO Products VALUES ('XMAS7', 'Gingerbread Man Costume', 'Christmas Outfits', 'Cookie Couture', 'Transform into a sweet gingerbread man this holiday.', 27.99, 14.00);
INSERT INTO Products VALUES ('XMAS8', 'Christmas Stocking Socks', 'Christmas Outfits', 'Cozy Comforts', 'Keep your feet warm with these festive stocking socks.', 12.99, 6.00);
INSERT INTO Products VALUES ('XMAS9', 'Festive Plaid Pajamas', 'Christmas Outfits', 'Holiday Homestead', 'Cozy pajamas in a classic red and green plaid pattern.', 32.99, 16.00);
INSERT INTO Products VALUES ('XMAS0', 'Ugly Christmas Sweater', 'Christmas Outfits', 'Tacky Treasures', 'Embrace the tacky tradition with this ugly sweater.', 22.99, 12.00);


-- Inserting into Ratings

INSERT INTO Ratings VALUES ('DEC01', 4.8);
INSERT INTO Ratings VALUES ('DEC02', 4.6);
INSERT INTO Ratings VALUES ('DEC03', 4.2);
INSERT INTO Ratings VALUES ('DEC04', 4.7);
INSERT INTO Ratings VALUES ('DEC05', 3.9);
INSERT INTO Ratings VALUES ('ELEC1', 4.5);
INSERT INTO Ratings VALUES ('ELEC2', 4.0);
INSERT INTO Ratings VALUES ('ELEC3', 4.3);
INSERT INTO Ratings VALUES ('ELEC4', 3.8);
INSERT INTO Ratings VALUES ('ELEC5', 4.4);
INSERT INTO Ratings VALUES ('ELEC6', 4.1);
INSERT INTO Ratings VALUES ('B0001', 4.5);
INSERT INTO Ratings VALUES ('B0002', 3.8); 
INSERT INTO Ratings VALUES ('B0003', 4.2);  
INSERT INTO Ratings VALUES ('B0004', 3.5); 
INSERT INTO Ratings VALUES ('B0005', 4.8);  
INSERT INTO Ratings VALUES ('B0006', 3.2);  
INSERT INTO Ratings VALUES ('B0007', 4.6);  
INSERT INTO Ratings VALUES ('B0008', 3.9);  
INSERT INTO Ratings VALUES ('B0009', 4.7);  
INSERT INTO Ratings VALUES ('B0010', 3.8);  
INSERT INTO Ratings VALUES ('XMAS1', 4.5);
INSERT INTO Ratings VALUES ('XMAS2', 4.2);
INSERT INTO Ratings VALUES ('XMAS3', 4.8);
INSERT INTO Ratings VALUES ('XMAS4', 3.9);
INSERT INTO Ratings VALUES ('XMAS5', 4.7);
INSERT INTO Ratings VALUES ('XMAS6', 4.6);
INSERT INTO Ratings VALUES ('XMAS7', 3.8);
INSERT INTO Ratings VALUES ('XMAS8', 4.0);
INSERT INTO Ratings VALUES ('XMAS9', 4.3);
INSERT INTO Ratings VALUES ('XMAS0', 3.5);

# Inserting into Inventory_Status

INSERT INTO Inventory_status VALUES ('DEC01', 50);
INSERT INTO Inventory_status VALUES ('DEC02', 30);
INSERT INTO Inventory_status VALUES ('DEC03', 40);
INSERT INTO Inventory_status VALUES ('DEC04', 25);
INSERT INTO Inventory_status VALUES ('DEC05', 60);
INSERT INTO Inventory_status VALUES ('ELEC1', 70);
INSERT INTO Inventory_status VALUES ('ELEC2', 45);
INSERT INTO Inventory_status VALUES ('ELEC3', 60);
INSERT INTO Inventory_status VALUES ('ELEC4', 35);
INSERT INTO Inventory_status VALUES ('ELEC5', 80);
INSERT INTO Inventory_status VALUES ('ELEC6', 55);
INSERT INTO Inventory_status VALUES ('B0001', 100);
INSERT INTO Inventory_status VALUES ('B0002', 150);
INSERT INTO Inventory_status VALUES ('B0003', 120);
INSERT INTO Inventory_status VALUES ('B0004', 80);
INSERT INTO Inventory_status VALUES ('B0005', 200);
INSERT INTO Inventory_status VALUES ('B0006', 100);
INSERT INTO Inventory_status VALUES ('B0007', 130);
INSERT INTO Inventory_status VALUES ('B0008', 90);
INSERT INTO Inventory_status VALUES ('B0009', 110);
INSERT INTO Inventory_status VALUES ('B0010', 160);
INSERT INTO Inventory_status VALUES ('XMAS1', 50);
INSERT INTO Inventory_status VALUES ('XMAS2', 75);
INSERT INTO Inventory_status VALUES ('XMAS3', 50);
INSERT INTO Inventory_status VALUES ('XMAS4', 60);
INSERT INTO Inventory_status VALUES ('XMAS5', 90);
INSERT INTO Inventory_status VALUES ('XMAS6', 120);
INSERT INTO Inventory_status VALUES ('XMAS7', 70);
INSERT INTO Inventory_status VALUES ('XMAS8', 110);
INSERT INTO Inventory_status VALUES ('XMAS9', 85);
INSERT INTO Inventory_status VALUES ('XMAS0', 65);

# Inserting into Discount

INSERT INTO Discounts VALUES ('DIS2120', '2021-11-25', '2021-12-05', 0.20);
INSERT INTO Discounts VALUES ('DIS2110', '2021-12-06', '2021-12-15', 0.10);
INSERT INTO Discounts VALUES ('DIS2220', '2022-11-25', '2022-12-05', 0.20);
INSERT INTO Discounts VALUES ('DIS2210', '2022-12-06', '2022-12-15', 0.10);
INSERT INTO Discounts VALUES ('DIS2320', '2023-11-25', '2023-12-05', 0.20);
INSERT INTO Discounts VALUES ('DIS2310', '2023-12-06', '2023-12-15', 0.10);

# Inserting into Payments

INSERT INTO Payments VALUES ('PAY001', 'Debit card');
INSERT INTO Payments VALUES ('PAY002', 'Credit card');
INSERT INTO Payments VALUES ('PAY003', 'Gift card');
INSERT INTO Payments VALUES ('PAY004', 'Debit card');
INSERT INTO Payments VALUES ('PAY005', 'Credit card');
INSERT INTO Payments VALUES ('PAY006', 'Gift card');
INSERT INTO Payments VALUES ('PAY007', 'Debit card');
INSERT INTO Payments VALUES ('PAY008', 'Credit card');
INSERT INTO Payments VALUES ('PAY009', 'Gift card');
INSERT INTO Payments VALUES ('PAY010', 'Debit card');
INSERT INTO Payments VALUES ('PAY011', 'Credit card');
INSERT INTO Payments VALUES ('PAY012', 'Gift card');
INSERT INTO Payments VALUES ('PAY013', 'Debit card');
INSERT INTO Payments VALUES ('PAY014', 'Credit card');
INSERT INTO Payments VALUES ('PAY015', 'Gift card');
INSERT INTO Payments VALUES ('PAY016', 'Debit card');
INSERT INTO Payments VALUES ('PAY017', 'Credit card');
INSERT INTO Payments VALUES ('PAY018', 'Gift card');
INSERT INTO Payments VALUES ('PAY019', 'Debit card');
INSERT INTO Payments VALUES ('PAY020', 'Credit card');
INSERT INTO Payments VALUES ('PAY021', 'Gift card');
INSERT INTO Payments VALUES ('PAY022', 'Debit card');
INSERT INTO Payments VALUES ('PAY023', 'Credit card');
INSERT INTO Payments VALUES ('PAY024', 'Gift card');
INSERT INTO Payments VALUES ('PAY025', 'Debit card');
INSERT INTO Payments VALUES ('PAY026', 'Credit card');
INSERT INTO Payments VALUES ('PAY027', 'Gift card');
INSERT INTO Payments VALUES ('PAY028', 'Debit card');
INSERT INTO Payments VALUES ('PAY029', 'Credit card');
INSERT INTO Payments VALUES ('PAY030', 'Gift card');
INSERT INTO Payments VALUES ('PAY031', 'Debit card');
INSERT INTO Payments VALUES ('PAY032', 'Credit card');
INSERT INTO Payments VALUES ('PAY033', 'Gift card');
INSERT INTO Payments VALUES ('PAY034', 'Debit card');
INSERT INTO Payments VALUES ('PAY035', 'Credit card');
INSERT INTO Payments VALUES ('PAY036', 'Gift card');
INSERT INTO Payments VALUES ('PAY037', 'Debit card');
INSERT INTO Payments VALUES ('PAY038', 'Credit card');
INSERT INTO Payments VALUES ('PAY039', 'Gift card');
INSERT INTO Payments VALUES ('PAY040', 'Debit card');
INSERT INTO Payments VALUES ('PAY041', 'Credit card');
INSERT INTO Payments VALUES ('PAY042', 'Gift card');
INSERT INTO Payments VALUES ('PAY043', 'Debit card');
INSERT INTO Payments VALUES ('PAY044', 'Credit card');
INSERT INTO Payments VALUES ('PAY045', 'Gift card');
INSERT INTO Payments VALUES ('PAY046', 'Debit card');
INSERT INTO Payments VALUES ('PAY047', 'Credit card');
INSERT INTO Payments VALUES ('PAY048', 'Gift card');
INSERT INTO Payments VALUES ('PAY049', 'Debit card');
INSERT INTO Payments VALUES ('PAY050', 'Credit card');
INSERT INTO Payments VALUES ('PAY051', 'Gift card');
INSERT INTO Payments VALUES ('PAY052', 'Debit card');
INSERT INTO Payments VALUES ('PAY053', 'Credit card');
INSERT INTO Payments VALUES ('PAY054', 'Gift card');
INSERT INTO Payments VALUES ('PAY055', 'Debit card');
INSERT INTO Payments VALUES ('PAY056', 'Credit card');
INSERT INTO Payments VALUES ('PAY057', 'Gift card');
INSERT INTO Payments VALUES ('PAY058', 'Debit card');
INSERT INTO Payments VALUES ('PAY059', 'Credit card');
INSERT INTO Payments VALUES ('PAY060', 'Gift card');
INSERT INTO Payments VALUES ('PAY061', 'Debit card');
INSERT INTO Payments VALUES ('PAY062', 'Credit card');
INSERT INTO Payments VALUES ('PAY063', 'Gift card');
INSERT INTO Payments VALUES ('PAY064', 'Debit card');
INSERT INTO Payments VALUES ('PAY065', 'Credit card');
INSERT INTO Payments VALUES ('PAY066', 'Gift card');
INSERT INTO Payments VALUES ('PAY067', 'Debit card');
INSERT INTO Payments VALUES ('PAY068', 'Credit card');
INSERT INTO Payments VALUES ('PAY069', 'Gift card');
INSERT INTO Payments VALUES ('PAY070', 'Debit card');
INSERT INTO Payments VALUES ('PAY071', 'Credit card');
INSERT INTO Payments VALUES ('PAY072', 'Gift card');
INSERT INTO Payments VALUES ('PAY073', 'Debit card');
INSERT INTO Payments VALUES ('PAY074', 'Credit card');
INSERT INTO Payments VALUES ('PAY075', 'Gift card');
INSERT INTO Payments VALUES ('PAY076', 'Debit card');
INSERT INTO Payments VALUES ('PAY077', 'Credit card');
INSERT INTO Payments VALUES ('PAY078', 'Gift card');
INSERT INTO Payments VALUES ('PAY079', 'Debit card');
INSERT INTO Payments VALUES ('PAY080', 'Credit card');
INSERT INTO Payments VALUES ('PAY081', 'Gift card');
INSERT INTO Payments VALUES ('PAY082', 'Debit card');
INSERT INTO Payments VALUES ('PAY083', 'Credit card');
INSERT INTO Payments VALUES ('PAY084', 'Gift card');
INSERT INTO Payments VALUES ('PAY085', 'Debit card');
INSERT INTO Payments VALUES ('PAY086', 'Credit card');
INSERT INTO Payments VALUES ('PAY087', 'Gift card');
INSERT INTO Payments VALUES ('PAY088', 'Debit card');
INSERT INTO Payments VALUES ('PAY089', 'Credit card');
INSERT INTO Payments VALUES ('PAY090', 'Gift card');
INSERT INTO Payments VALUES ('PAY091', 'Debit card');
INSERT INTO Payments VALUES ('PAY092', 'Credit card');
INSERT INTO Payments VALUES ('PAY093', 'Gift card');
INSERT INTO Payments VALUES ('PAY094', 'Debit card');
INSERT INTO Payments VALUES ('PAY095', 'Credit card');
INSERT INTO Payments VALUES ('PAY096', 'Gift card');
INSERT INTO Payments VALUES ('PAY097', 'Debit card');
INSERT INTO Payments VALUES ('PAY098', 'Credit card');
INSERT INTO Payments VALUES ('PAY099', 'Gift card');
INSERT INTO Payments VALUES ('PAY100', 'Debit card');
INSERT INTO Payments VALUES ('PAY101', 'Credit card');
INSERT INTO Payments VALUES ('PAY102', 'Gift card');
INSERT INTO Payments VALUES ('PAY103', 'Debit card');
INSERT INTO Payments VALUES ('PAY104', 'Credit card');
INSERT INTO Payments VALUES ('PAY105', 'Gift card');
INSERT INTO Payments VALUES ('PAY106', 'Debit card');
INSERT INTO Payments VALUES ('PAY107', 'Credit card');
INSERT INTO Payments VALUES ('PAY108', 'Gift card');
INSERT INTO Payments VALUES ('PAY109', 'Debit card');
INSERT INTO Payments VALUES ('PAY110', 'Credit card');
INSERT INTO Payments VALUES ('PAY111', 'Gift card');
INSERT INTO Payments VALUES ('PAY112', 'Debit card');
INSERT INTO Payments VALUES ('PAY113', 'Credit card');
INSERT INTO Payments VALUES ('PAY114', 'Gift card');
INSERT INTO Payments VALUES ('PAY115', 'Debit card');
INSERT INTO Payments VALUES ('PAY116', 'Credit card');
INSERT INTO Payments VALUES ('PAY117', 'Gift card');
INSERT INTO Payments VALUES ('PAY118', 'Debit card');
INSERT INTO Payments VALUES ('PAY119', 'Credit card');
INSERT INTO Payments VALUES ('PAY120', 'Gift card');
INSERT INTO Payments VALUES ('PAY121', 'Debit card');
INSERT INTO Payments VALUES ('PAY122', 'Credit card');
INSERT INTO Payments VALUES ('PAY123', 'Gift card');
INSERT INTO Payments VALUES ('PAY124', 'Debit card');
INSERT INTO Payments VALUES ('PAY125', 'Credit card'); 
INSERT INTO Payments VALUES ('PAY126', 'Gift card');
INSERT INTO Payments VALUES ('PAY127', 'Debit card');
INSERT INTO Payments VALUES ('PAY128', 'Credit card');
INSERT INTO Payments VALUES ('PAY129', 'Gift card');
INSERT INTO Payments VALUES ('PAY130', 'Debit card');
INSERT INTO Payments VALUES ('PAY131', 'Debit card');
INSERT INTO Payments VALUES ('PAY132', 'Gift card');
INSERT INTO Payments VALUES ('PAY133', 'Debit card');
INSERT INTO Payments VALUES ('PAY134', 'Gift card');
INSERT INTO Payments VALUES ('PAY135', 'Gift card');
INSERT INTO Payments VALUES ('PAY136', 'Debit card');
INSERT INTO Payments VALUES ('PAY137', 'Credit card');
INSERT INTO Payments VALUES ('PAY138', 'Gift card');
INSERT INTO Payments VALUES ('PAY139', 'Debit card');
INSERT INTO Payments VALUES ('PAY140', 'Gift card');
INSERT INTO Payments VALUES ('PAY141', 'Gift card');
INSERT INTO Payments VALUES ('PAY142', 'Gift card');
INSERT INTO Payments VALUES ('PAY143', 'Credit card');
INSERT INTO Payments VALUES ('PAY144', 'Gift card');
INSERT INTO Payments VALUES ('PAY145', 'Debit card');
INSERT INTO Payments VALUES ('PAY146', 'Credit card');
INSERT INTO Payments VALUES ('PAY147', 'Gift card');
INSERT INTO Payments VALUES ('PAY148', 'Debit card');
INSERT INTO Payments VALUES ('PAY149', 'Credit card');
INSERT INTO Payments VALUES ('PAY150', 'Gift card');

# Inserting into Shipping_details

INSERT INTO Shipping_details VALUES ('SHIP001', '123 Main St, Houston, TX', '2021-12-08', '617-545-9292');
INSERT INTO Shipping_details VALUES ('SHIP002', '456 Oak St, Boston, MA', '2021-12-08', '617-478-1234');
INSERT INTO Shipping_details VALUES ('SHIP003', '789 Pine St, New York, NY', '2021-12-08', '617-232-5678');
INSERT INTO Shipping_details VALUES ('SHIP004', '321 Elm St, Jersey City, NJ', '2021-12-09', '617-909-9876');
INSERT INTO Shipping_details VALUES ('SHIP005', '655 Birch St, Los Angeles, CA', '2021-12-09', '617-101-5432');
INSERT INTO Shipping_details VALUES ('SHIP006', '990 Maple St, Miami, FL', '2021-12-09', '617-545-6789');
INSERT INTO Shipping_details VALUES ('SHIP007', '135 Cedar St, Portland, OR', '2021-12-10', '617-555-0101');
INSERT INTO Shipping_details VALUES ('SHIP008', '864 Pine St, Atlanta, GA', '2021-12-10', '617-555-0102');
INSERT INTO Shipping_details VALUES ('SHIP009', '754 Oak St, Phoenix, AZ', '2021-12-10', '617-555-0103');
INSERT INTO Shipping_details VALUES ('SHIP010', '247 Elm St, Las Vegas, NV', '2021-12-11', '617-555-0104');
INSERT INTO Shipping_details VALUES ('SHIP011', '123 Main St, Denver, CO', '2021-12-11', '617-545-9292');
INSERT INTO Shipping_details VALUES ('SHIP012', '457 Oak St, Boston, MA', '2021-12-11', '617-478-1234');
INSERT INTO Shipping_details VALUES ('SHIP013', '789 Pine St, Brooklyn, NY', '2021-12-12', '617-232-5678');
INSERT INTO Shipping_details VALUES ('SHIP014', '322 Elm St, Newark, NJ', '2021-12-12', '617-909-9876');
INSERT INTO Shipping_details VALUES ('SHIP015', '656 Birch St, San Francisco, CA', '2021-12-12', '617-101-5432');
INSERT INTO Shipping_details VALUES ('SHIP016', '988 Maple St, Miami, FL', '2021-12-13', '617-545-6789');
INSERT INTO Shipping_details VALUES ('SHIP017', '136 Cedar St, Portland, OR', '2021-12-13', '617-555-0101');
INSERT INTO Shipping_details VALUES ('SHIP018', '865 Pine St, Atlanta, GA', '2021-12-13', '617-555-0102');
INSERT INTO Shipping_details VALUES ('SHIP019', '755 Oak St, Phoenix, AZ', '2021-12-13', '617-555-0103');
INSERT INTO Shipping_details VALUES ('SHIP020', '989 Maple St, San Francisco, CA', '2021-12-13', '617-555-0209');
INSERT INTO Shipping_details VALUES ('SHIP021', '654 Birch St, Los Angeles, CA', '2021-12-14', '617-555-0318');
INSERT INTO Shipping_details VALUES ('SHIP022', '246 Elm St, Las Vegas, NV', '2021-12-14', '617-555-0108');
INSERT INTO Shipping_details VALUES ('SHIP023', '866 Pine St, Atlanta, GA', '2021-12-14', '617-555-0320');
INSERT INTO Shipping_details VALUES ('SHIP024', '987 Maple St, Phoenix, AZ', '2021-12-14', '617-555-0514');
INSERT INTO Shipping_details VALUES ('SHIP025', '753 Oak St, Denver, CO', '2021-12-14', '617-555-0601');
INSERT INTO Shipping_details VALUES ('SHIP026', '123 Main St, Houston, TX', '2021-12-15', '617-555-0210');
INSERT INTO Shipping_details VALUES ('SHIP027', '456 Oak St, Los Angeles, CA', '2021-12-16', '617-555-0306');
INSERT INTO Shipping_details VALUES ('SHIP028', '789 Pine St, San Francisco, CA', '2021-12-16', '617-555-0501');
INSERT INTO Shipping_details VALUES ('SHIP029', '101 Elm St, Miami, FL', '2021-12-16', '617-555-0619');
INSERT INTO Shipping_details VALUES ('SHIP030', '202 Cedar St, Brooklyn, NY', '2021-12-17', '617-555-0601');
INSERT INTO Shipping_details VALUES ('SHIP031', '303 Maple St, Portland, OR', '2021-12-17', '617-555-0303');
INSERT INTO Shipping_details VALUES ('SHIP032', '404 Birch St, Atlanta, GA', '2021-12-18', '617-555-0214');
INSERT INTO Shipping_details VALUES ('SHIP033', '505 Walnut St, Phoenix, AZ', '2021-12-18', '617-555-0503');
INSERT INTO Shipping_details VALUES ('SHIP034', '606 Spruce St, Las Vegas, NV', '2021-12-19', '617-555-0513');
INSERT INTO Shipping_details VALUES ('SHIP035', '707 Oak St, Denver, CO', '2021-12-20', '617-555-0510');
INSERT INTO Shipping_details VALUES ('SHIP036', '808 Pine St, San Francisco, CA', '2021-12-20', '617-555-0208');
INSERT INTO Shipping_details VALUES ('SHIP037', '909 Cedar St, Portland, OR', '2021-12-21', '617-555-0616');
INSERT INTO Shipping_details VALUES ('SHIP038', '102 Elm St, Miami, FL', '2021-12-23', '617-932-5689');
INSERT INTO Shipping_details VALUES ('SHIP039', '204 Cedar St, Brooklyn, NY', '2021-12-23', '617-555-0612');
INSERT INTO Shipping_details VALUES ('SHIP040', '306 Maple St, Las Vegas, NV', '2021-12-24', '617-555-0108');
INSERT INTO Shipping_details VALUES ('SHIP041', '407 Birch St, Phoenix, AZ', '2021-12-24', '617-555-0511');
INSERT INTO Shipping_details VALUES ('SHIP042', '876 Main St, Houston, TX', '2021-12-25', '617-555-0292');
INSERT INTO Shipping_details VALUES ('SHIP043', '506 Walnut St, Los Angeles, CA', '2021-12-25', '617-555-0112');
INSERT INTO Shipping_details VALUES ('SHIP044', '103 Elm St, Miami, FL', '2021-12-26', '617-555-0511');
INSERT INTO Shipping_details VALUES ('SHIP045', '205 Cedar St, Brooklyn, NY', '2021-12-26', '617-555-0302');
INSERT INTO Shipping_details VALUES ('SHIP046', '307 Maple St, Las Vegas, NV', '2021-12-27', '617-555-0307');
INSERT INTO Shipping_details VALUES ('SHIP047', '908 Birch St, Atlanta, GA', '2021-12-27', '617-555-0104');
INSERT INTO Shipping_details VALUES ('SHIP048', '990 Main St, Houston, TX', '2021-12-28', '617-555-0319');
INSERT INTO Shipping_details VALUES ('SHIP049', '508 Walnut St, Phoenix, AZ', '2021-12-29', '617-555-0113');
INSERT INTO Shipping_details VALUES ('SHIP050', '101 Elm St, Miami, FL', '2021-12-30', '617-555-0619');
INSERT INTO Shipping_details VALUES ('SHIP051', '222 Main St, Houston, TX', '2022-12-28', '617-555-0507');
INSERT INTO Shipping_details VALUES ('SHIP052', '333 Oak St, Boston, MA', '2022-11-28', '617-555-0212');
INSERT INTO Shipping_details VALUES ('SHIP053', '444 Pine St, New York, NY', '2022-11-28', '617-555-0503');
INSERT INTO Shipping_details VALUES ('SHIP054', '567 Maple St, Jersey City, NJ', '2022-11-29', '617-555-0510');
INSERT INTO Shipping_details VALUES ('SHIP055', '987 Cedar St, Los Angeles, CA', '2022-11-29', '617-555-0318');
INSERT INTO Shipping_details VALUES ('SHIP056', '532 Birch St, Miami, FL', '2022-11-30', '617-555-0607');
INSERT INTO Shipping_details VALUES ('SHIP057', '678 Elm St, Portland, OR', '2022-12-01', '617-555-0310');
INSERT INTO Shipping_details VALUES ('SHIP058', '168 Walnut St, Atlanta, GA', '2022-12-01', '617-555-0612');
INSERT INTO Shipping_details VALUES ('SHIP059', '158 Chestnut St, Phoenix, AZ', '2022-12-01', '617-555-0202');
INSERT INTO Shipping_details VALUES ('SHIP060', '236 Spruce St, Las Vegas, NV', '2022-12-02', '617-555-0201');


INSERT INTO Shipping_details VALUES ('SHIP061', '23 Main St, Cityville, MA', '2022-12-04','617-555-0106');
INSERT INTO Shipping_details VALUES ('SHIP062', '456 Oak St, Townsville, CA','2022-12-04','617-555-0107');
INSERT INTO Shipping_details VALUES ('SHIP063', '789 Pine St, Villagetown, TX','2022-12-04','617-555-0108');
INSERT INTO Shipping_details VALUES ('SHIP064', '101 Maple St, Hamletsville, NY','2022-12-04','617-555-0109');
INSERT INTO Shipping_details VALUES ('SHIP065', '202 Cedar St, Hilltop City, FL','2022-12-04','617-555-0110');
INSERT INTO Shipping_details VALUES ('SHIP066', '303 Elm St, Riverside, CA','2022-12-04','617-555-0111');
INSERT INTO Shipping_details VALUES ('SHIP067', '404 Birch St, Lakeside, TX','2022-12-04','617-555-0112');
INSERT INTO Shipping_details VALUES ('SHIP068', '505 Walnut St, Mountainview, CO','2022-12-04','617-555-0113');
INSERT INTO Shipping_details VALUES ('SHIP069', '606 Pine St, Baytown, FL','2022-12-04','617-555-0114');
INSERT INTO Shipping_details VALUES ('SHIP070', '707 Oak St, Harbor City, CA', '2022-12-05','617-555-0115');
INSERT INTO Shipping_details VALUES ('SHIP071', '808 Cedar St, Summitville, NY','2022-12-06','617-555-0116');
INSERT INTO Shipping_details VALUES ('SHIP072', '909 Maple St, Valleytown, TX','2022-12-07','617-555-0117');
INSERT INTO Shipping_details VALUES ('SHIP073', '111 Pine St, Beachside, FL','2022-12-08','617-555-0118');
INSERT INTO Shipping_details VALUES ('SHIP074', '222 Elm St, Meadowville, CA','2022-12-08','617-555-0119');
INSERT INTO Shipping_details VALUES ('SHIP075', '333 Cedar St, Hillside, TX','2022-12-09','617-555-0120');
INSERT INTO Shipping_details VALUES ('SHIP076', '444 Birch St, Lakeshore, NY','2022-12-10','617-455-0291');
INSERT INTO Shipping_details VALUES ('SHIP077', '555 Walnut St, Hilltop City, CA','2022-12-10','617-478-2234');
INSERT INTO Shipping_details VALUES ('SHIP078', '666 Pine St, Forestville, TX','2022-12-10','617-932-5689');
INSERT INTO Shipping_details VALUES ('SHIP079', '777 Oak St, Lakeside, CO','2022-12-11','617-309-9871');
INSERT INTO Shipping_details VALUES ('SHIP080', '888 Cedar St, Harbor City, CA','2022-12-11','617-501-5433');
INSERT INTO Shipping_details VALUES ('SHIP081', '999 Maple St, Riverside, FL','2022-12-11','617-845-6781');
INSERT INTO Shipping_details VALUES ('SHIP082', '121 Pine St, Valleytown, TX','2022-12-11','617-555-0201');
INSERT INTO Shipping_details VALUES ('SHIP083', '232 Elm St, Meadowville, CA','2022-12-11','617-555-0202');
INSERT INTO Shipping_details VALUES ('SHIP084', '343 Cedar St, Beachside, NY','2022-12-11','617-555-0203');
INSERT INTO Shipping_details VALUES ('SHIP085', '454 Birch St, Summitville, TX','2022-12-11','617-555-0204');
INSERT INTO Shipping_details VALUES ('SHIP086', '565 Walnut St, Baytown, CA','2022-12-11','617-555-0205');
INSERT INTO Shipping_details VALUES ('SHIP087', '676 Pine St, Harbor City, FL','2022-12-12','617-555-0206');
INSERT INTO Shipping_details VALUES ('SHIP088', '787 Oak St, Hillside, NY','2022-12-13','617-555-0207');
INSERT INTO Shipping_details VALUES ('SHIP089', '898 Cedar St, Lakeshore, TX','2022-12-14','617-555-0208');
INSERT INTO Shipping_details VALUES ('SHIP090', '909 Walnut St, Lakeside, CO','2022-12-15','617-555-0209');
INSERT INTO Shipping_details VALUES ('SHIP091', '101 Pine St, Forestville, CA','2022-12-16','617-555-0210');
INSERT INTO Shipping_details VALUES ('SHIP092', '212 Elm St, Valleytown, TX','2022-12-17','617-555-0211');
INSERT INTO Shipping_details VALUES ('SHIP093', '323 Cedar St, Meadowville, FL','2022-12-17','617-555-0212');
INSERT INTO Shipping_details VALUES ('SHIP094', '434 Birch St, Riverside, NY','2022-12-17','617-555-0213');
INSERT INTO Shipping_details VALUES ('SHIP095', '545 Oak St, Hilltop City, TX','2022-12-18','617-555-0214');
INSERT INTO Shipping_details VALUES ('SHIP096', '656 Maple St, Baytown, CA','2022-12-18','617-555-0301');
INSERT INTO Shipping_details VALUES ('SHIP097', '767 Pine St, Summitville, TX','2022-12-19','617-555-0302');
INSERT INTO Shipping_details VALUES ('SHIP098', '878 Elm St, Lakeside, CO','2022-12-20','617-555-0303');
INSERT INTO Shipping_details VALUES ('SHIP099', '989 Cedar St, Harbor City, CA','2022-12-20','617-555-0304');

INSERT INTO Shipping_details VALUES ('SHIP100', '232 Parker St, Boston, MA','2023-12-2','617-555-0305');
INSERT INTO Shipping_details VALUES ('SHIP101', '606 Pine St, Baytown, FL','2023-12-3','617-555-0306');
INSERT INTO Shipping_details VALUES ('SHIP102', '707 Oak St, Harbor City, CA','2023-12-3','617-555-0307');
INSERT INTO Shipping_details VALUES ('SHIP103', '808 Cedar St, Summitville, NY','2023-12-3','617-555-0308');
INSERT INTO Shipping_details VALUES ('SHIP104', '909 Maple St, Valleytown, TX','2023-12-3','617-555-0309');
INSERT INTO Shipping_details VALUES ('SHIP105', '111 Pine St, Beachside, FL','2023-12-3','617-555-0310');
INSERT INTO Shipping_details VALUES ('SHIP106', '222 Elm St, Meadowville, CA','2023-12-3','617-555-0311');
INSERT INTO Shipping_details VALUES ('SHIP107', '323 Cedar St, Hillside, TX','2023-12-3','617-555-0312');
INSERT INTO Shipping_details VALUES ('SHIP108', '434 Birch St, Lakeshore, NY','2023-12-4','617-555-0313');
INSERT INTO Shipping_details VALUES ('SHIP109', '545 Oak St, Hilltop City, TX','2023-12-5','617-555-0314');
INSERT INTO Shipping_details VALUES ('SHIP110', '656 Maple St, Baytown, CA','2023-12-6','617-555-0315');
INSERT INTO Shipping_details VALUES ('SHIP111', '767 Pine St, Summitville, TX','2023-12-7','617-555-0316');
INSERT INTO Shipping_details VALUES ('SHIP112', '878 Elm St, Lakeside, CO','2023-12-8','617-555-0317');
INSERT INTO Shipping_details VALUES ('SHIP113', '909 Walnut St, Lakeside, CO','2023-12-9','617-555-0318');
INSERT INTO Shipping_details VALUES ('SHIP114', '101 Pine St, Forestville, CA','2023-12-9','617-555-0319');
INSERT INTO Shipping_details VALUES ('SHIP115', '212 Elm St, Valleytown, TX','2023-12-9','617-555-0320');
INSERT INTO Shipping_details VALUES ('SHIP116', '323 Cedar St, Meadowville, FL','2023-12-9','617-555-0501');
INSERT INTO Shipping_details VALUES ('SHIP117', '434 Birch St, Riverside, NY','2023-12-9','617-555-0502');
INSERT INTO Shipping_details VALUES ('SHIP118', '545 Oak St, Hilltop City, TX','2023-12-9','617-555-0503');
INSERT INTO Shipping_details VALUES ('SHIP119', '656 Maple St, Baytown, CA','2023-12-10','617-555-0504');
INSERT INTO Shipping_details VALUES ('SHIP120', '767 Pine St, Summitville, TX','2023-12-10','617-555-0505');
INSERT INTO Shipping_details VALUES ('SHIP121', '878 Elm St, Lakeside, CO','2023-12-10','617-555-0506');
INSERT INTO Shipping_details VALUES ('SHIP122', '989 Cedar St, Harbor City, CA','2023-12-10','617-555-0507');
INSERT INTO Shipping_details VALUES ('SHIP123', '121 Walnut St, Riverside, FL','2023-12-10','617-555-0508');
INSERT INTO Shipping_details VALUES ('SHIP124', '232 Pine St, Beachside, FL','2023-12-11','617-555-0509');
INSERT INTO Shipping_details VALUES ('SHIP125', '343 Oak St, Harbor City, CA','2023-12-11','617-555-0510');
INSERT INTO Shipping_details VALUES ('SHIP126', '454 Cedar St, Summitville, NY','2023-12-12','617-555-0511');
INSERT INTO Shipping_details VALUES ('SHIP127', '565 Maple St, Villageville, CA','2023-12-12','617-555-0512');
INSERT INTO Shipping_details VALUES ('SHIP128', '676 Oak St, Harbor City, CA','2023-12-12','617-555-0513');
INSERT INTO Shipping_details VALUES ('SHIP129', '787 Cedar St, Summitville, NY','2023-12-12','617-555-0514');
INSERT INTO Shipping_details VALUES ('SHIP130', '898 Pine St, Beachside, FL','2023-12-12','617-555-0515');
INSERT INTO Shipping_details VALUES ('SHIP131', '100 Walnut St, Riverside, FL','2023-12-12','617-555-0601');
INSERT INTO Shipping_details VALUES ('SHIP132', '111 Oak St, Harbor City, CA','2023-12-12','617-555-0602');
INSERT INTO Shipping_details VALUES ('SHIP133', '222 Cedar St, Summitville, NY','2023-12-12','617-555-0603');
INSERT INTO Shipping_details VALUES ('SHIP134', '333 Maple St, Villageville, CA','2023-12-12','617-555-0604');
INSERT INTO Shipping_details VALUES ('SHIP135', '444 Oak St, Harbor City, CA','2023-12-13','617-555-0605');
INSERT INTO Shipping_details VALUES ('SHIP136', '555 Cedar St, Summitville, NY','2023-12-13','617-555-0606');
INSERT INTO Shipping_details VALUES ('SHIP137', '666 Maple St, Villageville, CA','2023-12-14','617-555-0607');
INSERT INTO Shipping_details VALUES ('SHIP138', '777 Oak St, Harbor City, CA','2023-12-14','617-555-0608');
INSERT INTO Shipping_details VALUES ('SHIP139', '888 Cedar St, Summitville, NY','2023-12-15','617-555-0609');
INSERT INTO Shipping_details VALUES ('SHIP140', '999 Maple St, Riverside, FL','2023-12-16','617-555-0610');
INSERT INTO Shipping_details VALUES ('SHIP141', '121 Pine St, Valleytown, TX','2023-12-17','617-555-0611');
INSERT INTO Shipping_details VALUES ('SHIP142', '232 Elm St, Meadowville, CA','2023-12-18','617-555-0612');
INSERT INTO Shipping_details VALUES ('SHIP143', '343 Cedar St, Beachside, NY','2023-12-19','617-555-0613');
INSERT INTO Shipping_details VALUES ('SHIP144', '454 Oak St, Harbor City, CA','2023-12-20','617-555-0614');
INSERT INTO Shipping_details VALUES ('SHIP145', '565 Cedar St, Summitville, NY','2023-12-21','617-555-0615');
INSERT INTO Shipping_details VALUES ('SHIP146', '676 Maple St, Villageville, CA','2023-12-21','617-555-0616');
INSERT INTO Shipping_details VALUES ('SHIP147', '787 Oak St, Harbor City, CA','2023-12-22','617-555-0617');
INSERT INTO Shipping_details VALUES ('SHIP148', '888 Cedar St, Summitville, NY','2023-12-22','617-555-0618');
INSERT INTO Shipping_details VALUES ('SHIP149', '999 Maple St, Riverside, FL','2023-12-22','617-555-0619');
INSERT INTO Shipping_details VALUES ('SHIP150', '121 Pine St, Valleytown, TX','2023-12-22','617-555-0620');

# Inserting into sales using delimiter function

DELIMITER //
CREATE TRIGGER after_order_insert
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Sales (Order_id, Customer_id, Product_id)
    VALUES (NEW.Order_id, NEW.Customer_id, NEW.Product_id);
END;
//
DELIMITER ;


# Insert into order

INSERT INTO Orders VALUES ('ORD001', 'M23AE', 'ELEC1', 'DIS2120', 'SHIP001', 'PAY001', '2021-12-01 09:15:12', 1);
INSERT INTO Orders VALUES ('ORD002', 'F29AF', 'B0001', 'DIS2120', 'SHIP002', 'PAY002', '2021-12-01 12:15:23', 1);
INSERT INTO Orders VALUES ('ORD003', 'M35AM', 'ELEC3', 'DIS2120', 'SHIP003', 'PAY003', '2021-12-01 16:45:43', 1);
INSERT INTO Orders VALUES ('ORD004', 'F22AS', 'XMAS1', 'DIS2120', 'SHIP004', 'PAY004', '2021-12-02 08:45:22', 2);
INSERT INTO Orders VALUES ('ORD005', 'M40AJ', 'ELEC4', 'DIS2120', 'SHIP005', 'PAY005', '2021-12-02 09:15:56', 1);
INSERT INTO Orders VALUES ('ORD006', 'F27AL', 'B0003', 'DIS2120', 'SHIP006', 'PAY006', '2021-12-02 10:45:17', 1);
INSERT INTO Orders VALUES ('ORD007', 'M35AK', 'ELEC5', 'DIS2120', 'SHIP007', 'PAY007', '2021-12-03 10:00:18', 1);
INSERT INTO Orders VALUES ('ORD008', 'F28AM', 'XMAS2', 'DIS2120', 'SHIP008', 'PAY008', '2021-12-03 14:10:39', 2);
INSERT INTO Orders VALUES ('ORD009', 'M42AH', 'ELEC6', 'DIS2120', 'SHIP009', 'PAY009', '2021-12-04 17:30:38', 1);
INSERT INTO Orders VALUES ('ORD010', 'F22H1', 'XMAS3', 'DIS2120', 'SHIP010', 'PAY010', '2021-12-04 21:45:49', 3);
INSERT INTO Orders VALUES ('ORD011', 'M23AE', 'ELEC1', 'DIS2120', 'SHIP011', 'PAY011', '2021-12-04 22:30:41', 1);
INSERT INTO Orders VALUES ('ORD012', 'F29AF', 'B0001', 'DIS2120', 'SHIP012', 'PAY012', '2021-12-04 23:15:25', 1);
INSERT INTO Orders VALUES ('ORD013', 'M35AM', 'ELEC1', 'DIS2120', 'SHIP013', 'PAY013', '2021-12-05 09:45:15', 1); 
INSERT INTO Orders VALUES ('ORD014', 'F22AS', 'XMAS1', 'DIS2120', 'SHIP014', 'PAY014', '2021-12-05 11:30:48', 5);
INSERT INTO Orders VALUES ('ORD015', 'M40AJ', 'ELEC4', 'DIS2110', 'SHIP015', 'PAY015', '2021-12-06 08:20:29', 1);
INSERT INTO Orders VALUES ('ORD016', 'F27AL', 'B0001', 'DIS2110', 'SHIP016', 'PAY016', '2021-12-06 08:45:10', 1);
INSERT INTO Orders VALUES ('ORD017', 'M35AK', 'ELEC2', 'DIS2110', 'SHIP017', 'PAY017', '2021-12-07 09:00:15', 1);
INSERT INTO Orders VALUES ('ORD018', 'F28AM', 'XMAS3', 'DIS2110', 'SHIP018', 'PAY018', '2021-12-07 11:45:50', 2);
INSERT INTO Orders VALUES ('ORD019', 'M42AH', 'ELEC4', 'DIS2110', 'SHIP019', 'PAY019', '2021-12-07 13:30:18', 1);
INSERT INTO Orders VALUES ('ORD020', 'F34AD', 'ELEC2', 'DIS2110', 'SHIP020', 'PAY020', '2021-12-07 14:15:39', 1);
INSERT INTO Orders VALUES ('ORD021', 'M32AC', 'XMAS1', 'DIS2110', 'SHIP021', 'PAY021', '2021-12-07 19:30:27', 2);
INSERT INTO Orders VALUES ('ORD022', 'M47AO', 'ELEC1', 'DIS2110', 'SHIP022', 'PAY022', '2021-12-08 08:45:25', 1);
INSERT INTO Orders VALUES ('ORD023', 'M28AN', 'B0002', 'DIS2110', 'SHIP023', 'PAY023', '2021-12-08 11:00:23', 1);
INSERT INTO Orders VALUES ('ORD024', 'M41AB', 'ELEC4', 'DIS2110', 'SHIP024', 'PAY024', '2021-12-08 11:30:35', 1);
INSERT INTO Orders VALUES ('ORD025', 'M33AM', 'B0003', 'DIS2110', 'SHIP025', 'PAY025', '2021-12-08 14:15:23', 1);

INSERT INTO Orders VALUES ('ORD026', 'M42AM', 'ELEC2', 'DIS2110', 'SHIP026', 'PAY026', '2021-12-08 17:45:12', 1); 
INSERT INTO Orders VALUES ('ORD027', 'M40AM', 'XMAS4', 'DIS2110', 'SHIP027', 'PAY027', '2021-12-09 09:00:45', 2); 
INSERT INTO Orders VALUES ('ORD028', 'M26AJ', 'ELEC1', 'DIS2110', 'SHIP028', 'PAY028', '2021-12-09 14:30:34', 1); 
INSERT INTO Orders VALUES ('ORD029', 'F29AA', 'B0005', 'DIS2110', 'SHIP029', 'PAY029', '2021-12-09 16:45:26', 1); 
INSERT INTO Orders VALUES ('ORD030', 'M33AM', 'ELEC2', 'DIS2110', 'SHIP030', 'PAY030', '2021-12-10 09:30:28', 1); 
INSERT INTO Orders VALUES ('ORD031', 'F22S0', 'ELEC3', 'DIS2110', 'SHIP031', 'PAY031', '2021-12-10 12:45:26', 1); 
INSERT INTO Orders VALUES ('ORD032', 'M29AC', 'ELEC5', 'DIS2110', 'SHIP032', 'PAY032', '2021-12-12 14:15:45', 1); 
INSERT INTO Orders VALUES ('ORD033', 'M32AM', 'ELEC2', 'DIS2110', 'SHIP033', 'PAY033', '2021-12-12 17:45:27', 1); 
INSERT INTO Orders VALUES ('ORD034', 'F27AF', 'B0003', 'DIS2110', 'SHIP034', 'PAY034', '2021-12-13 08:30:39', 1); 
INSERT INTO Orders VALUES ('ORD035', 'M34AO', 'ELEC3', 'DIS2110', 'SHIP035', 'PAY035', '2021-12-13 10:15:29', 1); 
INSERT INTO Orders VALUES ('ORD036', 'M27AH', 'B0001', 'DIS2110', 'SHIP036', 'PAY036', '2021-12-14 10:20:37', 1); # Two products 
INSERT INTO Orders VALUES ('ORD036', 'M27AH', 'B0007', 'DIS2110', 'SHIP036', 'PAY036', '2021-12-14 10:20:37', 1); # Two products
INSERT INTO Orders VALUES ('ORD037', 'M30AC', 'ELEC2', 'DIS2110', 'SHIP037', 'PAY037', '2021-12-15 10:49:29', 1); 
INSERT INTO Orders VALUES ('ORD038', 'F37AK', 'B0003', 'DIS2110', 'SHIP038', 'PAY038', '2021-12-15 12:30:50', 1); 
INSERT INTO Orders VALUES ('ORD039', 'M35AO', 'ELEC1', NULL, 'SHIP039', 'PAY039', '2021-12-16 09:45:29', 1); 
INSERT INTO Orders VALUES ('ORD040', 'M47AO', 'ELEC1', NULL, 'SHIP040', 'PAY040', '2021-12-16 11:45:23', 1); 
INSERT INTO Orders VALUES ('ORD041', 'F30AL', 'B0002', NULL, 'SHIP041', 'PAY041', '2021-12-17 10:15:54', 1);  
INSERT INTO Orders VALUES ('ORD042', 'M23AE', 'ELEC1', NULL, 'SHIP042', 'PAY042', '2021-12-17 19:30:34', 1); 
INSERT INTO Orders VALUES ('ORD043', 'M45AN', 'ELEC1', NULL, 'SHIP043', 'PAY043', '2021-12-18 10:55:34', 1); 
INSERT INTO Orders VALUES ('ORD044', 'F30AL', 'ELEC1', NULL, 'SHIP044', 'PAY044', '2021-12-18 11:30:00', 1);  
INSERT INTO Orders VALUES ('ORD045', 'M35AE', 'ELEC1', NULL, 'SHIP045', 'PAY045', '2021-12-19 10:30:23', 1); 
INSERT INTO Orders VALUES ('ORD046', 'F33AF', 'B0002', NULL, 'SHIP046', 'PAY046', '2021-12-19 20:15:00', 2);  
INSERT INTO Orders VALUES ('ORD047', 'F22H1', 'XMAS2', NULL, 'SHIP047', 'PAY047', '2021-12-19 21:45:53', 1); 
INSERT INTO Orders VALUES ('ORD048', 'F39AF', 'B0001', NULL, 'SHIP048', 'PAY048', '2021-12-20 19:20:23', 1); 
INSERT INTO Orders VALUES ('ORD049', 'F29AC', 'ELEC3', NULL, 'SHIP049', 'PAY049', '2021-12-21 09:30:23', 1);  
INSERT INTO Orders VALUES ('ORD050', 'F29AA', 'B0002', NULL, 'SHIP050', 'PAY050', '2021-12-21 10:15:43', 1);  

INSERT INTO Orders VALUES ('ORD051', 'F24AM', 'ELEC2', 'DIS2110', 'SHIP051', 'PAY051', '2022-12-21 12:30:34', 1); # Two products 
INSERT INTO Orders VALUES ('ORD051', 'F24AM', 'XMAS3', 'DIS2110', 'SHIP051', 'PAY051', '2021-12-21 12:30:34', 3); # Two products 
INSERT INTO Orders VALUES ('ORD052', 'M47AJ', 'XMAS1', NULL, 'SHIP052', 'PAY052', '2022-11-24 09:50:13', 2); # Two products 
INSERT INTO Orders VALUES ('ORD052', 'M47AJ', 'DEC03', 'DIS2220', 'SHIP052', 'PAY052', '2022-11-25 09:50:13', 3); # Two products 
INSERT INTO Orders VALUES ('ORD053', 'M32AM', 'XMAS2', 'DIS2220', 'SHIP053', 'PAY053', '2022-11-25 12:30:49', 2); # Three products 
INSERT INTO Orders VALUES ('ORD053', 'M32AM', 'B0004', 'DIS2220', 'SHIP053', 'PAY053', '2022-11-25 12:30:49', 1); # Three products 
INSERT INTO Orders VALUES ('ORD053', 'M32AM', 'DEC06', 'DIS2220', 'SHIP053', 'PAY053', '2022-11-25 12:30:49', 4); # Three products 
INSERT INTO Orders VALUES ('ORD054', 'M34AO', 'XMAS7', 'DIS2220', 'SHIP054', 'PAY054', '2022-11-26 10:12:34', 3); # Three products 
INSERT INTO Orders VALUES ('ORD054', 'M34AO', 'ELEC6', 'DIS2220', 'SHIP054', 'PAY054', '2022-11-26 10:12:34', 1); # Three products 
INSERT INTO Orders VALUES ('ORD054', 'M34AO', 'DEC03', 'DIS2220', 'SHIP054', 'PAY054', '2022-11-26 10:12:34', 2); # Three products 
INSERT INTO Orders VALUES ('ORD055', 'M32AC', 'XMAS9', 'DIS2220', 'SHIP055', 'PAY055', '2022-11-26 19:30:20', 2); 
INSERT INTO Orders VALUES ('ORD056', 'F34AZ', 'XMAS0', 'DIS2220', 'SHIP056', 'PAY056', '2022-11-27 00:45:23', 3); # Two products 
INSERT INTO Orders VALUES ('ORD056', 'F34AZ', 'DEC06', 'DIS2220', 'SHIP056', 'PAY056', '2022-11-27 00:45:23', 4); # Two products 
INSERT INTO Orders VALUES ('ORD057', 'M36AT', 'DEC05', 'DIS2220', 'SHIP057', 'PAY057', '2022-11-27 09:55:54', 3);
INSERT INTO Orders VALUES ('ORD058', 'M35AO', 'XMAS4', 'DIS2220', 'SHIP058', 'PAY058', '2022-11-27 10:20:22', 2);
INSERT INTO Orders VALUES ('ORD059', 'M36AD', 'DEC02', 'DIS2220', 'SHIP059', 'PAY059', '2022-11-27 10:20:35', 3);
INSERT INTO Orders VALUES ('ORD060', 'F29AR', 'DEC06', 'DIS2220', 'SHIP060', 'PAY060', '2022-11-27 11:40:23', 3);
INSERT INTO Orders VALUES ('ORD061', 'F26AE', 'ELEC4', 'DIS2220', 'SHIP061', 'PAY061', '2022-11-27 12:45:11', 1);

INSERT INTO Orders VALUES ('ORD062', 'M39AA', 'B0005', 'DIS2220', 'SHIP062', 'PAY062', '2022-11-27 13:20:21', 1);
INSERT INTO Orders VALUES ('ORD063', 'M47AO', 'XMAS3', 'DIS2220', 'SHIP063', 'PAY063', '2022-11-27 14:30:55', 1);
INSERT INTO Orders VALUES ('ORD064', 'F19AI', 'B0006', 'DIS2220', 'SHIP064', 'PAY064', '2022-11-27 15:15:25', 1);
INSERT INTO Orders VALUES ('ORD065', 'M31AE', 'XMAS1', 'DIS2220', 'SHIP065', 'PAY065', '2022-11-27 16:45:53', 1);
INSERT INTO Orders VALUES ('ORD066', 'F36AM', 'B0005', 'DIS2220', 'SHIP066', 'PAY066', '2022-11-27 17:30:25', 1);
INSERT INTO Orders VALUES ('ORD067', 'M45AN', 'ELEC1', 'DIS2220', 'SHIP067', 'PAY067', '2022-11-27 17:45:26', 2);
INSERT INTO Orders VALUES ('ORD068', 'F29AC', 'B0001', 'DIS2220', 'SHIP068', 'PAY068', '2022-11-27 18:20:30', 2);
INSERT INTO Orders VALUES ('ORD069', 'M52AL', 'XMAS3', 'DIS2220', 'SHIP069', 'PAY069', '2022-11-27 20:30:02', 1);
INSERT INTO Orders VALUES ('ORD070', 'F24O0', 'B0006', 'DIS2220', 'SHIP070', 'PAY070', '2022-11-28 11:15:56', 1);
INSERT INTO Orders VALUES ('ORD071', 'M38AL', 'XMAS1', 'DIS2220', 'SHIP071', 'PAY071', '2022-11-29 16:45:53', 1);
INSERT INTO Orders VALUES ('ORD072', 'F33AH', 'XMAS2', 'DIS2220', 'SHIP072', 'PAY072', '2022-11-30 09:30:31', 1);
INSERT INTO Orders VALUES ('ORD073', 'M27AA', 'DEC02', 'DIS2220', 'SHIP073', 'PAY073', '2022-12-01 14:30:56', 1);
INSERT INTO Orders VALUES ('ORD073', 'M27AA', 'DEC05', 'DIS2220', 'SHIP073', 'PAY073', '2022-12-01 14:30:56', 1);
INSERT INTO Orders VALUES ('ORD074', 'F41AE', 'XMAS7', 'DIS2220', 'SHIP074', 'PAY074', '2022-12-02 10:45:15', 1);
INSERT INTO Orders VALUES ('ORD074', 'F41AE', 'XMAS6', 'DIS2220', 'SHIP074', 'PAY074', '2022-12-02 10:45:15', 1);
INSERT INTO Orders VALUES ('ORD074', 'F41AE', 'B0008', 'DIS2220', 'SHIP074', 'PAY074', '2022-12-02 10:45:15', 1);
INSERT INTO Orders VALUES ('ORD075', 'M34AB', 'DEC02', 'DIS2220', 'SHIP075', 'PAY075', '2022-12-03 16:00:02', 1);
INSERT INTO Orders VALUES ('ORD076', 'F31AU', 'XMAS3', 'DIS2220', 'SHIP076', 'PAY076', '2022-12-04 11:15:05', 1);
INSERT INTO Orders VALUES ('ORD077', 'M28AR', 'DEC01', 'DIS2220', 'SHIP077', 'PAY077', '2022-12-04 14:30:00', 3);
INSERT INTO Orders VALUES ('ORD078', 'F37AK', 'B0003', 'DIS2220', 'SHIP078', 'PAY078', '2022-12-04 19:15:12', 1);
INSERT INTO Orders VALUES ('ORD079', 'M45AP', 'ELEC3', 'DIS2220', 'SHIP079', 'PAY079', '2022-12-05 11:30:53', 1);
INSERT INTO Orders VALUES ('ORD080', 'F26AJ', 'B0004', 'DIS2220', 'SHIP080', 'PAY080', '2022-12-05 13:45:53', 1);
INSERT INTO Orders VALUES ('ORD081', 'M33AA', 'B0009', 'DIS2220', 'SHIP081', 'PAY081', '2022-12-05 14:00:12', 1);
INSERT INTO Orders VALUES ('ORD082', 'F29AR', 'ELEC4', 'DIS2220', 'SHIP082', 'PAY082', '2022-12-05 15:30:13', 1);
INSERT INTO Orders VALUES ('ORD083', 'M36AD', 'B0003', 'DIS2220', 'SHIP083', 'PAY083', '2022-12-05 18:45:53', 1);
INSERT INTO Orders VALUES ('ORD084', 'F39AH', 'ELEC3', 'DIS2220', 'SHIP084', 'PAY084', '2022-12-05 19:00:02', 1);
INSERT INTO Orders VALUES ('ORD085', 'M41AR', 'B0006', 'DIS2220', 'SHIP085', 'PAY085', '2022-12-05 11:15:23', 1);
INSERT INTO Orders VALUES ('ORD086', 'F24AA', 'ELEC6', 'DIS2220', 'SHIP086', 'PAY086', '2022-12-05 14:30:53', 1);
INSERT INTO Orders VALUES ('ORD087', 'M38AB', 'B0007', 'DIS2210', 'SHIP087', 'PAY087', '2022-12-06 16:45:12', 1);
INSERT INTO Orders VALUES ('ORD088', 'F32AN', 'B0002', 'DIS2210', 'SHIP088', 'PAY088', '2022-12-07 11:45:53', 1);
INSERT INTO Orders VALUES ('ORD088', 'F32AN', 'B0003', 'DIS2210', 'SHIP088', 'PAY088', '2022-12-07 11:45:53', 1);
INSERT INTO Orders VALUES ('ORD089', 'M27AH', 'ELEC3', 'DIS2210', 'SHIP089', 'PAY089', '2022-12-08 17:00:05', 1);
INSERT INTO Orders VALUES ('ORD090', 'F34AD', 'B0004', 'DIS2210', 'SHIP090', 'PAY090', '2022-12-10 21:15:35', 2);
INSERT INTO Orders VALUES ('ORD090', 'F34AD', 'B0005', 'DIS2210', 'SHIP090', 'PAY090', '2022-12-10 21:15:35', 2);
INSERT INTO Orders VALUES ('ORD091', 'M42AM', 'ELEC4', 'DIS2210', 'SHIP091', 'PAY091', '2022-12-11 14:00:13', 1);
INSERT INTO Orders VALUES ('ORD092', 'F30AS', 'B0009', 'DIS2210', 'SHIP092', 'PAY092', '2022-12-12 16:24:50', 1);
INSERT INTO Orders VALUES ('ORD093', 'M47AJ', 'B0010', 'DIS2210', 'SHIP093', 'PAY093', '2022-12-12 16:45:41', 1);
INSERT INTO Orders VALUES ('ORD094', 'F25AJ', 'ELEC6', 'DIS2210', 'SHIP094', 'PAY094', '2022-12-12 19:00:31', 1);
INSERT INTO Orders VALUES ('ORD095', 'M29AC', 'B0001', 'DIS2210', 'SHIP095', 'PAY095', '2022-12-13 11:25:44', 1);
INSERT INTO Orders VALUES ('ORD096', 'F28AO', 'ELEC4', 'DIS2210', 'SHIP096', 'PAY096', '2022-12-13 14:33:22', 1);
INSERT INTO Orders VALUES ('ORD097', 'M35AE', 'B0006', 'DIS2210', 'SHIP097', 'PAY097', '2022-12-14 16:45:33', 1);
INSERT INTO Orders VALUES ('ORD098', 'F22S0', 'ELEC4', 'DIS2210', 'SHIP098', 'PAY098', '2022-12-15 15:02:42', 1);
INSERT INTO Orders VALUES ('ORD099', 'M30AD', 'XMAS2', 'DIS2210', 'SHIP099', 'PAY099', '2022-12-15 18:30:20', 3);


INSERT INTO Orders VALUES ('ORD100', 'F26AG', 'DEC01', 'DIS2320', 'SHIP100', 'PAY100', '2023-11-25 20:45:45', 2);
INSERT INTO Orders VALUES ('ORD101', 'M40AM', 'B0008', 'DIS2320', 'SHIP101', 'PAY101', '2023-11-26 10:21:19', 1);
INSERT INTO Orders VALUES ('ORD102', 'F33AF', 'B0007', 'DIS2320', 'SHIP102', 'PAY102', '2023-11-26 12:00:00', 2);
INSERT INTO Orders VALUES ('ORD103', 'M29AG', 'XMAS4', 'DIS2320', 'SHIP103', 'PAY103', '2023-12-26 14:23:59', 2);
INSERT INTO Orders VALUES ('ORD104', 'F27AZ', 'DEC05', 'DIS2320', 'SHIP104', 'PAY104', '2023-12-26 15:00:35', 2);
INSERT INTO Orders VALUES ('ORD105', 'M36AT', 'ELEC5', 'DIS2320', 'SHIP105', 'PAY105', '2023-12-26 16:37:11', 1);
INSERT INTO Orders VALUES ('ORD106', 'F31AM', 'B0003', 'DIS2320', 'SHIP106', 'PAY106', '2023-11-26 20:50:20', 1);
INSERT INTO Orders VALUES ('ORD107', 'M38AJ', 'DEC06', 'DIS2320', 'SHIP107', 'PAY107', '2023-11-26 21:39:47', 2);
INSERT INTO Orders VALUES ('ORD108', 'F24AL', 'XMAS2', 'DIS2320', 'SHIP108', 'PAY108', '2023-11-27 13:09:30', 1);
INSERT INTO Orders VALUES ('ORD109', 'M420M', 'XMAS3', 'DIS2320', 'SHIP109', 'PAY109', '2023-11-28 18:56:00', 2);
INSERT INTO Orders VALUES ('ORD110', 'F34AE', 'DEC03', 'DIS2320', 'SHIP110', 'PAY110', '2023-11-29 17:57:09', 1);
INSERT INTO Orders VALUES ('ORD111', 'M37AM', 'B0008', 'DIS2320', 'SHIP111', 'PAY111', '2023-11-30 18:30:30', 1);
INSERT INTO Orders VALUES ('ORD112', 'F25AI', 'B0005', 'DIS2320', 'SHIP112', 'PAY112', '2023-12-01 20:31:02', 1);
INSERT INTO Orders VALUES ('ORD113', 'M32AC', 'XMAS3', 'DIS2320', 'SHIP113', 'PAY113', '2023-12-02 10:24:41', 1);
INSERT INTO Orders VALUES ('ORD114', 'F39AF', 'XMAS9', 'DIS2320', 'SHIP114', 'PAY114', '2023-12-02 12:43:47', 1);
INSERT INTO Orders VALUES ('ORD115', 'M28AN', 'DEC02', 'DIS2320', 'SHIP115', 'PAY115', '2023-12-02 16:59:32', 1);
INSERT INTO Orders VALUES ('ORD116', 'M26AJ', 'XMAS0', 'DIS2320', 'SHIP116', 'PAY116', '2023-12-02 19:39:32', 1);
INSERT INTO Orders VALUES ('ORD117', 'F35AI', 'B0006', 'DIS2320', 'SHIP117', 'PAY117', '2023-12-02 20:08:02', 1);
INSERT INTO Orders VALUES ('ORD118', 'M32AM', 'DEC03', 'DIS2320', 'SHIP118', 'PAY118', '2023-12-02 23:58:31', 1);
INSERT INTO Orders VALUES ('ORD119', 'F29AE', 'DEC01', 'DIS2320', 'SHIP119', 'PAY119', '2023-12-03 11:11:33', 1);
INSERT INTO Orders VALUES ('ORD120', 'F40AE', 'B0008', 'DIS2320', 'SHIP120', 'PAY120', '2023-12-03 14:29:11', 1);
INSERT INTO Orders VALUES ('ORD121', 'M37AJ', 'DEC01', 'DIS2320', 'SHIP121', 'PAY121', '2023-12-03 18:40:57', 1);
INSERT INTO Orders VALUES ('ORD122', 'F24AM', 'ELEC1', 'DIS2320', 'SHIP122', 'PAY122', '2023-12-03 20:09:19', 1);
INSERT INTO Orders VALUES ('ORD123', 'M31AH', 'B0004', 'DIS2320', 'SHIP123', 'PAY123', '2023-12-03 21:23:36', 1);
INSERT INTO Orders VALUES ('ORD124', 'F28AZ', 'DEC03', 'DIS2320', 'SHIP124', 'PAY124', '2023-12-04 22:35:57', 1);
INSERT INTO Orders VALUES ('ORD125', 'M34AO', 'XMAS8', 'DIS2320', 'SHIP125', 'PAY125', '2023-12-04 23:08:09', 1);
INSERT INTO Orders VALUES ('ORD126', 'F30AL', 'ELEC5', 'DIS2320', 'SHIP126', 'PAY126', '2023-12-05 12:01:31', 1);
INSERT INTO Orders VALUES ('ORD127', 'M39AJ', 'B0002', 'DIS2320', 'SHIP127', 'PAY127', '2023-12-05 14:29:00', 1);
INSERT INTO Orders VALUES ('ORD128', 'F27AF', 'XMAS2', 'DIS2320', 'SHIP128', 'PAY128', '2023-12-05 16:39:01', 1);
INSERT INTO Orders VALUES ('ORD129', 'M41AB', 'DEC06', 'DIS2320', 'SHIP129', 'PAY129', '2023-12-05 19:33:29', 1);
INSERT INTO Orders VALUES ('ORD130', 'F23AH', 'DEC03', 'DIS2320', 'SHIP130', 'PAY130', '2023-12-05 21:26:16', 1);
INSERT INTO Orders VALUES ('ORD131', 'M33AM', 'B0007', 'DIS2320', 'SHIP131', 'PAY131', '2023-12-05 22:47:32', 1);
INSERT INTO Orders VALUES ('ORD132', 'F36AF', 'ELEC6', 'DIS2320', 'SHIP132', 'PAY132', '2023-12-05 23:00:11', 1);
INSERT INTO Orders VALUES ('ORD133', 'F27AO', 'DEC01', 'DIS2320', 'SHIP133', 'PAY133', '2023-12-05 23:11:32', 1);
INSERT INTO Orders VALUES ('ORD134', 'M42K0', 'DEC05', 'DIS2320', 'SHIP134', 'PAY134', '2023-12-05 23:35:16', 2);
INSERT INTO Orders VALUES ('ORD135', 'F31AG', 'XMAS0', 'DIS2310', 'SHIP135', 'PAY135', '2023-12-06 14:20:44', 1);
INSERT INTO Orders VALUES ('ORD136', 'M29AB', 'B0008', 'DIS2310', 'SHIP136', 'PAY136', '2023-12-06 19:10:55', 1);
INSERT INTO Orders VALUES ('ORD137', 'F34AZ', 'B0001', 'DIS2310', 'SHIP137', 'PAY137', '2023-12-07 13:08:09', 1);
INSERT INTO Orders VALUES ('ORD138', 'M38AC', 'DEC05', 'DIS2310', 'SHIP138', 'PAY138', '2023-12-07 20:02:11', 1);
INSERT INTO Orders VALUES ('ORD139', 'F26AL', 'B0005', 'DIS2310', 'SHIP139', 'PAY139', '2023-12-07 14:24:32', 1);
INSERT INTO Orders VALUES ('ORD140', 'M39AG', 'DEC01', 'DIS2310', 'SHIP140', 'PAY140', '2023-12-07 17:56:48', 1);
INSERT INTO Orders VALUES ('ORD141', 'F24AS', 'DEC05', 'DIS2310', 'SHIP141', 'PAY141', '2023-12-07 10:00:23', 1);
INSERT INTO Orders VALUES ('ORD142', 'M35AO', 'ELEC3', 'DIS2310', 'SHIP142', 'PAY142', '2023-12-07 15:08:55', 1);
INSERT INTO Orders VALUES ('ORD143', 'F32AC', 'DEC02', 'DIS2310', 'SHIP143', 'PAY143', '2023-12-07 18:58:10', 2);
INSERT INTO Orders VALUES ('ORD144', 'M28AI', 'DEC03', 'DIS2310', 'SHIP144', 'PAY144', '2023-12-07 10:01:25', 2);
INSERT INTO Orders VALUES ('ORD145', 'F37AH', 'DEC02', 'DIS2310', 'SHIP145', 'PAY145', '2023-12-07 14:01:25', 1);
INSERT INTO Orders VALUES ('ORD146', 'M30AC', 'XMAS3', 'DIS2310', 'SHIP146', 'PAY146', '2023-12-07 19:18:30', 1);
INSERT INTO Orders VALUES ('ORD147', 'F25AL', 'DEC06', 'DIS2310', 'SHIP147', 'PAY147', '2023-12-07 16:30:51', 3);
INSERT INTO Orders VALUES ('ORD148', 'M41AM', 'XMAS0', 'DIS2310', 'SHIP148', 'PAY148', '2023-12-07 19:50:34', 1);
INSERT INTO Orders VALUES ('ORD149', 'F29AA', 'XMAS4', 'DIS2310', 'SHIP149', 'PAY149', '2023-12-07 20:40:58', 1);
INSERT INTO Orders VALUES ('ORD150', 'M33AJ', 'ELEC6', 'DIS2310', 'SHIP150', 'PAY150', '2023-12-07 21:39:10', 1);


#Top-Selling Products Category by Quantity
SELECT P.Product_category, SUM(O.Order_quantity) AS TotalUnitsSold
FROM Orders O
JOIN Products P ON O.Product_id = P.Product_id
GROUP BY P.Product_category
ORDER BY TotalUnitsSold DESC
LIMIT 10;

#Average Product Rating by Category
SELECT P.Product_category, AVG(R.Rating) AS AverageRating
FROM Ratings R
JOIN Products P ON R.Product_id = P.Product_id
GROUP BY P.Product_category
ORDER BY AverageRating DESC;

#Product Categories with the Highest Repeat Purchase Rate
SELECT 
  Prod.Product_category,
  COUNT(DISTINCT Ord.Customer_id) AS UniqueCustomers,
  COUNT(Ord.Order_id) AS TotalOrders,
  COUNT(Ord.Order_id) / COUNT(DISTINCT Ord.Customer_id) AS AverageOrdersPerCustomer
FROM Orders Ord
JOIN Products Prod ON Ord.Product_id = Prod.Product_id
GROUP BY Prod.Product_category
HAVING UniqueCustomers > 1
ORDER BY AverageOrdersPerCustomer DESC;

#Product Categories with the Highest Total Profit
SELECT 
  P.Product_category,
  SUM(O.Order_quantity * P.Product_selling_price) AS TotalSales,
  SUM(O.Order_quantity * P.Product_purchase_price) AS TotalCost,
  (SUM(O.Order_quantity * P.Product_selling_price) - SUM(O.Order_quantity * P.Product_purchase_price)) AS TotalProfit
FROM Orders O
JOIN Products P ON O.Product_id = P.Product_id
GROUP BY P.Product_category
ORDER BY TotalProfit DESC
LIMIT 3;

#Impact of Discounts on Sales Volume: Whether discounts lead to higher sales volumes?
SELECT D.Discount_rate, SUM(O.Order_quantity) AS TotalUnitsSold
FROM Orders O
JOIN Discounts D ON O.Discount_id = D.Discount_id
GROUP BY D.Discount_rate
ORDER BY TotalUnitsSold DESC;

#Top-Selling Products Category by Total Sales in Male Group
SELECT 
 C.Customer_gender,
  P.Product_category, 
  P.Product_name, 
  COUNT(O.Order_id) AS TotalOrders, 
  SUM(O.Order_quantity) AS TotalUnitsSold, 
  SUM(O.Order_quantity * P.Product_selling_price) AS TotalSales
FROM Orders O
JOIN Customers C ON O.Customer_id = C.Customer_id
JOIN Products P ON O.Product_id = P.Product_id
WHERE C.Customer_gender = 'Male' 
GROUP BY P.Product_category
ORDER BY TotalSales DESC;

#Top-Selling Products Category by Total Sales in Female Group
SELECT 
 C.Customer_gender,
  P.Product_category, 
  P.Product_name, 
  COUNT(O.Order_id) AS TotalOrders, 
  SUM(O.Order_quantity) AS TotalUnitsSold, 
  SUM(O.Order_quantity * P.Product_selling_price) AS TotalSales
FROM Orders O
JOIN Customers C ON O.Customer_id = C.Customer_id
JOIN Products P ON O.Product_id = P.Product_id
WHERE C.Customer_gender = 'Female' 
GROUP BY P.Product_category
ORDER BY TotalSales DESC;

#Top-Selling Products Category by Total Sales in Different Age Group
SELECT 
  CASE
    WHEN C.Customer_age BETWEEN 18 AND 25 THEN '18-25'
    WHEN C.Customer_age BETWEEN 26 AND 35 THEN '26-35'
    WHEN C.Customer_age BETWEEN 36 AND 45 THEN '36-45'
    WHEN C.Customer_age > 45 THEN '46+'
    ELSE 'Under 18'
  END AS AgeGroup,
  P.Product_category,
  SUM(O.Order_quantity) AS TotalUnitsSold,
  SUM(O.Order_quantity * P.Product_selling_price) AS TotalSalesValue
FROM Orders O
JOIN Customers C ON O.Customer_id = C.Customer_id
JOIN Products P ON O.Product_id = P.Product_id
WHERE P.Product_category = 'Christmas Outfits'
GROUP BY  AgeGroup, P.Product_category
ORDER BY TotalSalesValue DESC, TotalUnitsSold DESC;

#Customers With the Highest Total Spend Across all Orders
SELECT 
    C.Customer_id, 
    C.Customer_name,
    SUM(O.Order_quantity * P.Product_selling_price) AS Total_Spent
FROM 
    Customers C
JOIN 
    Orders O ON C.Customer_id = O.Customer_id
JOIN 
    Products P ON O.Product_id = P.Product_id
GROUP BY 
    C.Customer_id, C.Customer_name
ORDER BY 
    Total_Spent DESC
LIMIT 10;

#Total Sales from Each Order
SELECT 
    O.Order_id,
    SUM(O.Order_quantity * P.Product_selling_price) AS Total_Sales
FROM 
    Orders O
JOIN 
    Products P ON O.Product_id = P.Product_id
GROUP BY 
    O.Order_id;

#Order with the Highest Sales
SELECT 
    O.Order_id,
    SUM(O.Order_quantity * P.Product_selling_price) AS Total_Sales
FROM 
    Orders O
JOIN 
    Products P ON O.Product_id = P.Product_id
GROUP BY 
    O.Order_id
ORDER BY 
    Total_Sales DESC
LIMIT 1;

#Profit Percentage Across Product
SELECT 
    Product_name, 
    ((Product_selling_price - Product_purchase_price) / Product_purchase_price) * 100 AS Profit_Percentage
FROM 
    Products
ORDER BY 
    Profit_Percentage DESC;
    

