--This file will keep SQL test data 

INSERT INTO charities 
  (name, street, town, state, zip, password, charityType_ID, latitude, longitude)
VALUES 
  ('Test Place', '3333 Buford Dr', 'Buford', 'GA', 30519, 'test', 1, 2, 3);

INSERT INTO CharityType 
  (type_name)
VALUES 
  ('Education');

INSERT INTO itemCategories
  (category_name)
VALUES 
  ('Yard/Garden Item');

--Item Categories that were inserted into the itemcategories table 
Household 
Kids Toys
kids clothes
books
small appliance
women's clothing 
men's clothing
women shoes
men's shoes 
Pet item 
yard/garden item'


INSERT INTO CharityType
  (type_name)
VALUES 
  ('Research / Public Policy');

1. Education --Household
2. Animals      
3. arts/culture  
4. community development --Household
5. Environment 
6. Health
7. Human and Civil Rights
8. Human Services 
9.  International --Household
10. Religion  --Household
11. Research / Public Policy


--Silverware 
INSERT INTO charityAndItemsTable
  (charityType_ID, itemCategory_ID)
VALUES (10, 1)

UPDATE charities 
SET name = 'Community Center', street = '3333 Buford Dr', town = 'Buford'
WHERE  charity_id = 5;

UPDATE charities 
SET latitude = 34.0646432, longitude = -83.9839893
WHERE  charity_id = 5;


--Works
SELECT u.latitude as "user_lat", u.longitude as "user_long", c.charity_id, i.item_name, ct.type_name, c.name, c.street, c.town, c.state, c.zip, c.latitude, c.longitude FROM items i
JOIN users u on u.user_id = i.user_id
JOIN itemCategories ic on ic.itemCategory_ID = i.itemCategory_ID
JOIN charityAndItemsTable cit on ic.itemCategory_ID = cit.itemCategory_ID
JOIN charities c on c.charityType_ID = cit.charityType_ID
JOIN CharityType ct on ct.charityType_ID = c.charityType_ID
WHERE i.user_id = 3
ORDER BY item_name;

SELECT c.name, c.street, c.town, c.state, c.zip FROM charity_favorites cf
JOIN charities c ON c.charity_id = cf.charity_id
WHERE cf.user_id = 3;









































