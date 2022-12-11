CREATE TABLE Restaurants( 
    name text,
    address text,
    phone text,
    hours text,
    website text,
    email text,
    image_link text,
    PRIMARY KEY(name, address)
);

-- Restaurant Information for Fresh Side 
INSERT INTO Restaurants VALUES(
    'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4132560296',
    '12:00PM - 9:00PM', 
    'https://sites.google.com/view/paradise-of-india-menu/home', 
    NULL, 
    'https://agendabrussels.imgix.net/resto-11c24503067e7ee330da0663447dfb8243e2b6ea.jpg'
);

-- Restaurant Information for MoMo Tibetan Restaurant 
INSERT INTO Restaurants VALUES(
    'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002', 
    '4138350382', 
    '12:00PM - 9:00PM', 
    'https://amherstmomo.blogspot.com/', 
    NULL, 
    'https://lh3.googleusercontent.com/p/AF1QipP9SU3J9NcsBI7VHPCVTYgs3fCSdwX8wrRy64Bg=s1360-w1360-h1020'
);

-- Restaurant Information for Paradise of India 
INSERT INTO Restaurants VALUES(
    'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002', 
    '4132561067', 
    '12:00PM - 9:00PM', 
    'https://sites.google.com/view/paradise-of-india-menu/home', 
    NULL, 
    'https://agendabrussels.imgix.net/resto-11c24503067e7ee330da0663447dfb8243e2b6ea.jpg'
);

-- Restaurant Information for Pulse Cafe 
INSERT INTO Restaurants VALUES(
    'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    '4133870555', 
    '11:00AM - 7:00PM', 
    'https://www.pulsecafe.com/menu', 
    NULL, 
    'https://images.squarespace-cdn.com/content/v1/5dab37a5462c89744b573e5a/1610911631971-DTEW14MI67QD6HM4YMI6/Pulse+Photo.jpg'
);

-- Restaurant Information for Paul and Elizabeth's 
INSERT INTO Restaurants VALUES(
    'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    '4135844832', 
    '11:30AM - 8:00PM', 
    'http://places.singleplatform.com/paul-and-elizabeths/menu?ref=google', 
    NULL, 
    'https://media-cdn.tripadvisor.com/media/photo-s/07/71/38/55/paul-elizabeth-s.jpg'
);

-- Restaurant Information for Mi Tierra 
INSERT INTO Restaurants VALUES(
    'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    '4135879820', 
    '12:00PM - 8:00PM', 
    'http://places.singleplatform.com/mi-tierra-66/menu?ref=google#menu_818781', 
    NULL, 
    'https://mitierrahadley.com/wp-content/uploads/2020/09/MG_4463-1024x683.jpg'
);

-- Restaurant Information for Crazy Noodles 
INSERT INTO Restaurants VALUES(
    'Crazy Noodles',
    '36 Main St, Amherst, Massachusetts, 01002',
    '4132533287', 
    '11:00AM - 9:00PM', 
    'http://www.crazynoodlesamherst.com/', 
    NULL, 
    'https://media-cdn.tripadvisor.com/media/photo-s/06/20/94/c4/crazy-noodles.jpg'
);

-- Restaurant Information for Ginger Garden
INSERT INTO Restaurants VALUES(
    'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    '4132566666', 
    '11:00AM - 10:00PM', 
    'https://www.gingergardenamherst.com/', 
    NULL, 
    'https://www.masslive.com/resizer/X87cT9yJhrfEjfNh_uAAEr6MVa0=/1280x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/image.masslive.com/home/mass-media/width2048/img/entertainment/photo/ginger-garden-amherstjpg-f141969a5e1136bd.jpg'
);

CREATE TABLE Menus( 
	res_name text, 
    address text, 
	food_name text, 
    food_type text, 
	vegetarian bool, 
    vegan bool, 
    glutenfree bool, 
    PRIMARY KEY(res_name, address, food_name), 
    FOREIGN KEY(res_name, address) REFERENCES Restaurants(name, address) 
);

-- Appetizers for Fresh Side
INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Seaweed Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Kimchi',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Ribs',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Beef Cabbage',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Peanut Tofu',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Shrimp Sumai',
    'Appetizer', 
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Edamame',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'House Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Vegetable Spring Roll',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Crab Rangoon',
    'Appetizer',
    false,
    false,
    true
);

-- Entrees for Fresh Side
INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '2pc Edo Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4pc Edo Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '2pc Seaweed Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4pc Seaweed Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '2pc Spicy Beans',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4pc Spicy Beans',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Thai Tea Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4pc Thai Tea Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '2pc Vietnamese Tea Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '4pc Vietnamese Tea Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    '2pc Spicy Chicken',
    'Entree',
    false,
    false,
    true
);

-- Drinks for Fresh Side
INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Formosa Oolong',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Jasmine Green Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Brown Rice Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Longjing Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Ceylon',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Pur-Erh',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Lapsang Souchong',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Chamomile Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Chrysanthemum',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Hibiscus Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Fresh Side',
    '39 S Pleasant St, Amherst, Massachusetts, 01002',
    'Ginger Honey Tea',
    'Drink',
    true,
    true,
    true
);

-- Appetizer Information for MoMo Tibetian Restaurant
INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Shogok Khasta',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Dohpa Khatsa',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Chalay Khatsa',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Dolma Desi',
    'Appetizer',
    true,
    false,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Dolma momo',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Shogok momo',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Chicken Finger',
    'Appetizer',
    false,
    false,
    true
);

-- Entrees for MoMo Tibetian Restaurant
INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Beef Broth Soup',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Nyumtabhaley',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Tingmo',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'White Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Brown Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Supinmandu',
    'Entree',
    false,
    false,
    true
);

-- Desserts for MoMo Tibetan Restaurant
INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Shongday',
    'Dessert',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Yogurt (Home made)',
    'Dessert',
    true,
    false,
    false
);

-- Drinks Information for MoMo Tibetian Restaurant
INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Po-cha',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Chang-amo',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Mango Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Plain Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Soda',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Ginger Lemon Tea with Honey',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'MoMo Tibetan Restaurant',
    '23 N Pleasant St, Amherst, Massachusetts, 01002',
    'Ice Tea',
    'Drink',
    true,
    true,
    true
);

-- Appetizers for Paradise of India
INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Vegetable Samosa (2 Pieces)',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Meat Samosa (2 Pieces)',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Vegetable Pakora (Bhajia)',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Chicken Pakora',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mixed Platter (Serves Two)',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Vegetable Platter (Serves Two)',
    'Appetizer',
    'Vegetarian'
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Vegetable Platter (Serves Two)',
    'Appetizer',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Aloo Tikki',
    'Appetizer',
    true,
    true,
    true
);

-- Entries for Paradies of India
INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Lentil Soup',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Coconut Soup',
    'Entree',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Raita (Cold)',
    'Entree',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Papadum',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Pickles',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mango Chutney',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mixed Salad',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Chutney (2 Ounce)',
    'Entree',
    true,
    true,
    true
);


-- Desserts for Paradise of India
INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Gulab Jamun (Two Pieces)',
    'Dessert',
    true,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Kheer',
    'Dessert',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Kulfi',
    'Dessert',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mango Kulfi',
    'Dessert',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Ginger Ice Cream',
    'Dessert',
    true,
    false,
    false
);

-- Drinks for Paradise of India
INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Soft Drinks',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Bottled Water',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Sparkling Water (Perrier)',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Salty Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mango Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Sweet Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Strawberry Lassi',
    'Drink',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Tropical Orange Juice',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Mango Juice',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Ice Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Hot Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Green Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Coffee',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paradise of India',
    '87 Main St, Amherst, Massachusetts, 01002',
    'Masala Chai Tea',
    'Drink',
    true,
    true,
    true
);

-- Appetizers for Pulse Cafe
INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ROASTED YUKON OR SWEET POTATOES',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'AVOCADO TOAST',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'HUMMUS PLATTER',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'WOOD-FIRED GARLIC KNOTS',
    'Appetizer',
    true,
    true,
    true
);

-- Entrees for Pulse Cafe
INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'PULSE BURGER',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ALL-AMERICAN BURGER',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'CHIMICHURRI BURGER',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'TEX-MEX BURGER',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'GRILLED CHICKEN BURRITO',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'VIDA BOWL',
    'Entree',
    false,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'MAC N CHEESE BOWL',
    'Entree',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'SOUTHERN COMFORT BOWL',
    'Entree',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'PULSE HOUSE - FULL 14 / HALF',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'MEDITERRANEAN KALE - FULL 13 / HALF',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'BUFFALO CHICKEN 15 / 22',
    'Entree',
    true,
    true,
    true
);

-- Drinks for Pulse Cafe
INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'TURMERIC LATTE',
    'Drink',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ORZO LATTE',
    'Drink',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ORZO BREWED',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ASSORTED RISHI ORGANIC LOOSE TEAS (12oz)',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'CHAI CHAGA ICED LATTE',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'WILD BERRY HIBISCUS ICED TEA',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'RASPBERRY LEMONADE',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'Sweetleaf Green',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'SUNSHINE GREENS',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'PINEAPPLE GLOW',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'APPLE JUICE 2.0',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'TRIPLE CITRUS',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'LOVE ROOT',
    'Drink',
    true,
    true,
    true
);

-- Desserts for Pulse Cafe
INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ALMOND JOY',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'TRIPLE BERRY',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ACAI',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'PINA COLADA',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'STRAWBERRY MANGO BANANA',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'GREEN JOLLY',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Pulse Cafe',
    '270 Russell St, Hadley, Massachusetts, 010035',
    'ACAI SMOOTHIE BOWL',
    'Dessert',
    true,
    true,
    true
);

-- Entrees for Paul and Elizabeth's
INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Sesame Ginger Sauce',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    '16oz Hummus',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'A La Carte Salmon',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Marinated Tofu',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Steamed Tofu',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Deep Fried Tofu',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Polenta Croutons',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Japanese Style Croquettes',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Sweet Potato Fries',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Side Of Shrimp',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Sauteed Greens',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Steamed Mixed Vegetables',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Baked Brown Rice Large',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Baked Brown Rice',
    'Entree',
    true,
    true,
    true
);

-- Appetizers for Paul and Elizabeth's
INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Wild Flounder Lunch',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetable Burger',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Fish Lunch',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetarian Platter',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Hummus & Falafel',
    'Appetizer',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetable & Herb Risotto Cakes',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetable Tempura Appetizer',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Whole Wheat Roll',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetable Soup-Quart',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegetable Soup',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Fish Chowder-Quart',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Fish Chowder',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Bean Soup-Quart',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Bean Soup',
    'Appetizer',
    true,
    true,
    true
);

-- Drinks for Paul and Elizabeth's
INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Spindrift Seltzers',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'House Hibiscus Peppermint Tea',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Reeds Ginger Beer',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Saratoga Spring Sparkling Water',
    'Drink',
    true,
    true,
    true
);

-- Desserts for Paul and Elizabeth's
INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Cream Pie Of The Day',
    'Dessert',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Coconut Carrot Cake',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Vegan Chocolate Mousse Cake (GF)',
    'Dessert',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Paul and Elizabeths',
    '150 Main St, Northhampton, Massachusetts, 01060',
    'Apple Pie',
    'Dessert',
    true,
    true,
    true
);

-- Appetizers for Mi Tierra
INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Fried Plantains',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Fried Yuca',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Nachos',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Simple Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Empanadas (2)',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Shrimp Ceviche',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Sopa De Tortilla',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Tostadas',
    'Appetizer',
    true,
    false,
    false
);

-- Entrees for Mi Tierra
INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Black Beans',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Mexican Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Pinto Beans',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'White Rice',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Rajas',
    'Entree',
    true,
    true,
    true
);

-- Drinks for Mi Tierra
INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Bud Light',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Coors',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Corona',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Corona Light',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Dos Equis Lager',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Haneiken',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Modelo Especial',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Narragansett',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Negra Modelo',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Pasifico',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Presidente',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'House Made Drinks',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Jarritos',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Mexican Soda',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'Red Sangria',
    'Drink',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Mi Tierra',
	'Hadley, Massachusetts, 48 Russell St, 01035',
    'White Sangria',
    'Drink',
    true,
    true,
    true
);

-- Entrees for Crazy Noodles
INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Wonton Soup',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Wonton Soup',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Spring Rolls (12)',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Spring Rolls (6)',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Spring Rolls (3)',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Shrimp Cakes (3)',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Lemon Garlic Shrimp',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Golden Tofu Triangles (4)',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Crispy Shrimp Wontons (8)',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Crispy Pork Wontons (8)',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Teriyaki',
    'Entree',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Satay',
    'Entree',
    false,
    false,
    true
);

-- Appetizers for Crazy Noodles
INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Fresh Feta Salad',
    'Appetizer',
    true,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Peanut Noodle Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Thai Steak Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Cilantro Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Caesar Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Spicy Glass Noodles Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Cilantro Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Asian Shrimp Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Large Fresh Feta Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Small Fresh Feta Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Large Crispy Wonton Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Small Crispy Wonton Salad',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Large Caesar Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Small Caesar Salad',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Vegetable Noodle Soup',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Wonton Noodle Soup',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Tom Yum Goong',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Tofu Noodles',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Shaved Pork Noodles',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Seafood Noodles',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Red Devil',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Pork Ball Noodles',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Phnom Penh Noodles',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Island Oasis',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Golden Noodle Soup',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Chicken Noodles',
    'Appetizer',
    false,
    false,
    true
);	

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Beef Noodles',
    'Appetizer',
    false,
    false,
    true
);

-- Desserts for Crazy Noodles
INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Pineapple Rice',
    'Dessert',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Green Curry',
    'Dessert',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Sweet Chili Chicken',
    'Dessert',
    false,
    false,
    true
);

-- Drinks for Crazy Noodles
INSERT INTO Menus VALUES(
	'Crazy Noodles',
	'36 Main St, Amherst, Massachusetts, 01002',
    'Thai Iced Tea',
    'Drink',
    true,
    true,
    true
);

-- Entrees for Ginger Garden
INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'House Veggie Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Summer Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Aac Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Crunchy Tofu Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Sweet Potato Tempura Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Avocado & Cucumber Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Oshinko Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Asparagus Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Avocado Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Cucumber Roll',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'White Rice-Small',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'White Rice-Large',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Sweet & Sour Sauce',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Spicy Mayo',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Hot Mustard',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Hot Chili Oil',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Eel Sauce',
    'Entree',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Side Of Dumpling Sauce',
    'Entree',
    true,
    true,
    true
);

-- Appetizers for Ginger Garden
INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Pu Pu Platter For 1',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Vegetable Tempura Appetizer',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Wonton With Peanut Sauce',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Vietnamese Spring Rolls (2) Shrimp Or Chicken',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Shrimp Shumai',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Vegetable Dumplings (6)',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Spring Roll (Veg)(1)',
    'Appetizer',
    true,
    false,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Scallion Pancake (8)',
    'Appetizer',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Fried Chicken Wings (8)',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Edamame',
    'Appetizer',
    true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Egg Roll (1)',
    'Appetizer',
    true,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Crab Rangoon (6)',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Cold Noodles With Peanut Sauce',
    'Appetizer',
    true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Chicken Fingers',
    'Appetizer',
    false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Wood Ear Mushroom Salad',
    'Appetizer',
	true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Wontons In Hot Chili Oil',
    'Appetizer',
	true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Tofu Skin Salad',
    'Appetizer',
	true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Spicy Cucumber Salad',
    'Appetizer',
	true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Pork Belly With Garlic Soy',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Fu Chi Fei Pien',
    'Appetizer',
	true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Dumplings In Hot Chili Oil',
    'Appetizer',
	true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Dan Dan Noodle',
    'Appetizer',
	true,
    true,
    false
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Yellowtail Jalapeno',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Tuna Tataki',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Sushi Appetizer',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Spicy Kani Salad',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Sashimi Appetizer',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Rainbow Salad',
    'Appetizer',
	false,
    false,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Garden Salad',
    'Appetizer',
	true,
    true,
    true
);

INSERT INTO Menus VALUES(
	'Ginger Garden',
    '351 Northampton Rd, Amherst, Masscahusetts, 01002',
    'Avocado Salad',
    'Appetizer',
	true,
    true,
    true
);

-- Desserts for Ginger Garden
-- TODO: Fuck it make something up :D

CREATE TABLE users(
	email text PRIMARY KEY, 
    first_name text, 
    last_name text,  
    password text, 
    vegetarian bool,
    vegan bool,
    glutenfree bool
);


SELECT food_name, food_type FROM Menus m, users u 
WHERE res_name = 'Paul and Elizabeths' 
AND u.email = 'lperdomo@umass.edu' 
AND (m.vegetarian = true AND u.vegetarian = true OR 
m.vegan = true AND u.vegan = true 
and m.glutenfree = true and u.glutenfree = true);
