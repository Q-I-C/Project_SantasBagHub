# Project_SantasBagHub
Relational Database for Online Christmas-Themed Platform 

# Industry Overview
Global Christmas Market: In 2022, the global Christmas market boasted a staggering valuation of US$800 billion, with projections indicating that it will reach an impressive US$1 trillion by 2027, marking a remarkable compound annual growth rate (CAGR) of 6.3%. Several key factors contribute to this continued expansion:
 •	Increasing Disposable Income: Developing economies are witnessing a rise in disposable income, allowing consumers to allocate more resources to festive celebrations.
 •	Online Retail Surge: The proliferation of online retail channels has significantly augmented the accessibility and diversity of Christmas products, contributing to market growth.
 •	Festive Experiences: The growing popularity of Christmas-themed events and immersive experiences is drawing consumers and fueling market expansion.
 •	Personalization and Premium Demand: Consumers are increasingly inclined towards personalized gifting and premium Christmas products, driving innovation and diversity in offerings.

Christmas Market Size in the United States: The United States holds the title for the world's largest Christmas market, with a staggering estimated value of US$350 billion in 2022. In 2023, U.S. consumers are anticipated to spend an average of $997.73 on Christmas, resulting in holiday sales totaling over $957 billion. The U.S. Christmas market can be categorized into major segments:
 •	Gifts (64.9%)
 •	Food and Non-Gift Items (23.1%)
 •	Decorations and Holiday Supplies (12%)

Growth Catalysts for the U.S. Christmas Market:
 •	Emphasis on Unique Experiences: Consumers seek distinct and memorable Christmas experiences, encompassing festive outings, workshops, and travel.
 •	E-commerce Dominance: The burgeoning e-commerce landscape continues to flourish, offering convenience and an extensive array of Christmas products.
 •	Personalization Trend: A growing demand for personalized gifts and experiences is propelling the customization options available for Christmas offerings.
 •	Social Media Influence: Social media platforms wield significant influence in shaping Christmas trends and influencing consumers' purchasing choices.
 Sources for this research include the National Retail Federation (NRF), Statista, Market Research Future, and Euromonitor International.

Christmas significance for American Consumers: Beyond its religious origins, Christmas holds profound cultural and emotional significance for American consumers, symbolizing:
 •	Family and Togetherness: Christmas serves as a cherished occasion for reuniting with loved ones, embracing traditions, and crafting enduring memories.
 •	Generosity and Giving: The act of gift-giving embodies love, appreciation, and the joy of spreading happiness.
 •	Warmth and Goodwill: The festive spirit fosters compassion, generosity, and goodwill toward others.
 •	Hope and Optimism: Christmas embodies hope and optimism, celebrating light and renewal amidst the winter darkness.
 •	Traditions and Nostalgia: Christmas traditions evoke strong sentimental value, fostering a sense of belonging and connection to generations past.
 •	Escape and Relaxation: Christmas provides a welcome respite from daily routines and stress, offering a period of leisure and enjoyment.

Consumer Behavior Surrounding Christmas: American consumers exhibit distinct patterns and preferences during the Christmas season:
 •	Early Planning and Shopping: Many Americans commence their Christmas planning and shopping as early as October.
 •	Emphasis on Experiences: In addition to gift-giving, consumers increasingly seek unique and immersive Christmas experiences.
 •	Online Shopping Dominance: Online retail platforms have emerged as the primary channel for Christmas shopping, offering convenience and an extensive product selection.
 •	Increased Budget Allocation: Consumers allocate a substantial portion of their budget to Christmas celebrations, encompassing gifts, decorations, and festivities.
 •	Personalization and Customization: There is a growing demand for personalized and customized gifts and experiences that align with individual preferences and interests.
 •	Social Media Influence: Social media platforms wield considerable sway in shaping consumer choices and influencing Christmas trends.

# Business Background
SantasBagHub,  established in 2023, is a premier e-commerce platform dedicated to celebrating the joy and spirit of Christmas all year round. This innovative online marketplace is not just about shopping; it's a comprehensive Christmas-centric universe, designed to cater to the unique festive needs of each customer. 

# The Objectives and the Solution Techniques
Objectives:
 •	Develop a centralized DBMS for customer, product, and transaction management.
 •	Ensure data integrity and support business analytics.
 •	Streamline operations for efficiency and accuracy.
 •	Scale the system for business growth and customer feedback analysis.
Solutions:
 •	Construct an Entity-Relationship Diagram (ERD) for clear data structure visualization.
 •	Create a detailed database schema with normalization for data integrity.
 •	Utilize SQL for database setup and management.
 •	Implement foreign keys for data relationships and indexing for query optimization.
 •	Integrate data visualization for real-time business insights.

# Value Proposition
Our extensive range of carefully curated Christmas-specific products and services at SantasBagHub helps holiday enthusiasts and festive families who want to immerse themselves in the Christmas spirit by finding the perfect holiday gifts and decorations. We enable our diverse customers to easily navigate our uniquely picked selection through a dedicated filtering system that offers the most popular, most recommended, and lowest price features, reducing the frustration of endless searching and avoiding the disappointment of irrelevant results. Additionally, we amplify the joy of holiday shopping by providing eco-friendly options, enabling a purchase with a purpose and a deeper connection to the festive season. Unlike other e-commerce platforms that offer a broader, less specialized product range, (SantasBagHub) focuses exclusively on Christmas-related items, ensuring that every product is relevant to our customer's holiday needs and celebrations.

# Business Requirements
The Platform will track **Customers**, **Products**, **Inventory status**, **Ratings**, **Orders**, **Discounts**, **Sales**, **Payments** and **Shipping details**.

For each **Customers**:
 -	Customer_id (unique, PK)
 -	Customer_name
 -	Customer_age
 -	Customer_gender
 -	Customer_number
 -	Customer_email

For each **Products**:
 -	Product_id (unique, PK)
 -	Product_name
 -	Product_category
 -	Product_Brand
 -	Product_description
 -	Product_selling_price
 -	Product_purchase_price

For each **Inventory_Status** (Weak entity that cannot exist without a Product, using Product_id as a foreign key):
 -	Product_id (PK, links to Product, FK)
 -	Inventory_units

For each **Ratings** (Weak entity that cannot exist without a Product, using Product_id as a foreign key):
 -	Product_id (links to Product, FK)
 -	Rating

For each **Orders**:
 -	Order_id (unique, PK)
 -	Customer_id (links to Customer, PK, FK)
 -	Product_id (Links to Product, PK, FK)
 -	Discount_id (Links to Discount, FK)
 -	Shipping_tracking_id (Links to Shipping,FK)
 -	Payment_id (Links to Payment, FK)
 -	Order_date/time
 -	Order_units

For each **Discounts**:
 -	Discount_id (PK)
 -	Discount_start_date
 -	Discount_end_date
 -	Discount_rate

For each **Sales** (Associative entity that resolves the many-to-many relationship between Orders and Products, considered a weak entity as it cannot exist without an Order):
 -	Sales_id (PK)
 -	Product_id (links to Product, FK)
 -	Order_id (links to Order, FK)
 -	Customer (links to Order, FK)

For each **Payments**:
 -	Payment_id (PK)
 -	Payment_type

For each **Shipping_Details**:
 -	Shipping_tracking_id (PK)
 -	Shipping_Address
 -	Estimate_delivery_time
 -	Shipping_contact_number 

# Cardinality Relationships:
**Customers to Orders:** One-to-Many (1:M). Each customer (identified by Customer_id) can place multiple orders, but each order (identified by Order_id) is associated with one customer.
**Orders to Products:** Many-to-Many (M:N). An order can contain multiple products, and a product can be part of multiple orders. This relationship typically requires a junction table, which in this schema is represented by the "Sales" entity that includes Order_id and Product_id as foreign keys.
**Orders to Payments:** One-to-One (1:1). Each order is associated with a single payment, and each payment is linked to a single order. This is indicated by Payment_id being a foreign key in the "Orders" entity.
**Orders to Shipping Details:** One-to-One (1:1). Each order corresponds to one set of shipping details, indicated by Shipping_tracking_id in the "Orders" entity.
**Orders to Discounts:** Many-to-One (M:1). An order can have one discount associated with it, but a discount can be applied to multiple orders.
**Products to Inventory_Status:** One-to-One (1:1). Each product has a corresponding inventory status, indicated by Product_id being a foreign key in the "Inventory_Status" entity.
**Products to Rating:** One-to-Many (1:M). Each product, represented by Product_id, can be reviewed and receive ratings from multiple customers, which means a single product can have many ratings associated with it. However, each rating is specific to one product, indicating a one-to-many relationship from Products to Ratings in the database.

# ER-Diagram of SantasBagHub

![SantasBagHub_ERD](https://github.com/Q-I-C/Project_SantasBagHub/assets/101164186/97f90bb0-e945-4074-9241-af6de6d60111)







# Relational Schema Diagram

![SantasBagHub_Relational_Schema](https://github.com/Q-I-C/Project_SantasBagHub/assets/101164186/d282f0d4-c177-406a-890e-270ba72309d3)

 


