CREATE TABLE contact_info(
	res_id int, 
    phone text, 
    hours text, 
    website text, 
    email text, 
    picture_address text, 
    PRIMARY KEY(res_id) 
);

INSERT INTO contact_info VALUES(
	1, 
    '4132560296', 
    '11:30AM - 8:30PM', 
    'freshsidema.com', 
    NULL, 
    'https://lh3.googleusercontent.com/p/AF1QipMHFqgZsaev4jY3sE5LJG0sfc13Pkha-jQyDqUv=s1360-w1360-h1020'
);

CREATE TABLE address_info(
	res_id int, 
	city text, 
    state text, 
    address text, 
    zip int, 
    PRIMARY KEY(res_id) 
);


INSERT INTO address_info VALUES(
	1, 
    'Amherst', 
    'Massachusetts', 
    '39 S Pleasant St', 
    01002
);


CREATE TABLE Restaurants( 
	res_id int, 
    name text,  
    PRIMARY KEY(res_id), 
    FOREIGN KEY(res_id) REFERENCES contact_info(res_id), 
    FOREIGN KEY(res_id) REFERENCES address_info(res_id) 
);


INSERT INTO Restaurants VALUES(
	1,
    'Fresh Side'
);

CREATE TABLE Menus( 
	res_id int, 
	food_name text, 
    food_type text, 
	allergen text, 
    PRIMARY KEY(res_id, food_name, allergen), 
    FOREIGN KEY(res_id) REFERENCES Restaurants(res_id) 
);

INSERT INTO Menus VALUES(
	1,
    'Seaweed Salad',
    'Appetizer',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Seaweed Salad',
    'Appetizer',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Seaweed Salad',
    'Appetizer',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Kimchi',
    'Appetizer',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Kimchi',
    'Appetizer',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Kimchi',
    'Appetizer',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Ribs',
    'Appetizer',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Beef Cabbage',
    'Appetizer',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Peanut Tofu',
    'Appetizer',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Peanut Tofu',
    'Appetizer',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Formosa Oolong',
    'Drinks',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Formosa Oolong',
    'Drinks',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Formosa Oolong',
    'Drinks',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Jasmine Green Tea',
    'Drinks',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Jasmine Green Tea',
    'Drinks',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Jasmine Green Tea',
    'Drinks',
    'Glutenfree'
);

INSERT INTO Menus VALUES(
	1,
    'Brown Rice Tea',
    'Drinks',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	1,
    'Brown Rice Tea',
    'Drinks',
    'Vegan'
);

INSERT INTO Menus VALUES(
	1,
    'Brown Rice Tea',
    'Drinks',
    'Glutenfree'
);


CREATE TABLE allergy_info(
	user_id int, 
    gluten bool, 
    vegan bool, 
    soy bool, 
    PRIMARY KEY(user_id) 
);

INSERT INTO allergy_info VALUES(
	1,
    true,
    false,
    false
);

INSERT INTO allergy_info VALUES(
	2,
    false,
    true,
    true
);

INSERT INTO allergy_info VALUES(
	3,
    false,
    false,
    false
);

CREATE TABLE users(
	user_id int, 
    first_name text, 
    last_name text, 
    email text, 
    password text, 
    PRIMARY KEY(user_id), 
    FOREIGN KEY(user_id) REFERENCES allergy_info(user_id) 
);

INSERT INTO users VALUES(
	1,
    'Lenin',
    'Perdomo',
    'lperdomo@umass.edu',
    'lenin_password'
);

INSERT INTO users VALUES(
	2,
    'Rohit',
    'Sonawane',
    'rsonawane@umass.edu',
    'rohit_password'
);

INSERT INTO users VALUES(
	3,
    'Dante',
    'Cortez',
    'dcortez@umass.edu',
    'dante_password'
);

/*
CREATE VIEW public_users AS
SELECT user_id, first_name, last_name, email
FROM users;
*/