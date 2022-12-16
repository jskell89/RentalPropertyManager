BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role, name) VALUES ('landlord','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_LANDLORD', 'Jotaro');
INSERT INTO users (username,password_hash,role, name) VALUES ('landlord2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_LANDLORD', 'Josephine');
INSERT INTO users (username,password_hash,role, name) VALUES ('landlord3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_LANDLORD', 'Jolene');
INSERT INTO users (username,password_hash,role, name) VALUES ('landlord4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_LANDLORD', 'Joanna');
INSERT INTO users (username,password_hash,role, name) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN', 'Jonny5');

INSERT INTO users (username,password_hash,role, name) VALUES ('jo','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MAINTENANCE', 'Jo');
INSERT INTO users (username,password_hash,role, name) VALUES ('joe','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MAINTENANCE', 'Joe');
INSERT INTO users (username,password_hash,role, name) VALUES ('joseph','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MAINTENANCE', 'Joseph');
INSERT INTO users (username,password_hash,role, name) VALUES ('joey','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MAINTENANCE', 'Joey');
INSERT INTO users (username,password_hash,role, name) VALUES ('jojo','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MAINTENANCE', 'JoJo');

INSERT INTO users (username,password_hash,role, name) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Josh');
INSERT INTO users (username,password_hash,role, name) VALUES ('user2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Joshua');
INSERT INTO users (username,password_hash,role, name) VALUES ('user3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jodi');
INSERT INTO users (username,password_hash,role, name) VALUES ('user4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Joel');
INSERT INTO users (username,password_hash,role, name) VALUES ('user5','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jonathan');
INSERT INTO users (username,password_hash,role, name) VALUES ('user6','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jose');
INSERT INTO users (username,password_hash,role, name) VALUES ('user7','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jose2');
INSERT INTO users (username,password_hash,role, name) VALUES ('user8','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jose3');
INSERT INTO users (username,password_hash,role, name) VALUES ('user9','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jose4');
INSERT INTO users (username,password_hash,role, name) VALUES ('user10','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Jose5');


INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('201 S Sunbury Rd, Westerville, OH 43081', 2200, 4, 2, 'https://photos.zillowstatic.com/fp/f4dd05266fac8d7cfcd44793142519b6-cc_ft_768.webp', 1727,
		'4 BR 2 full bath ranch home that overlooks Hoover Reservoir. Go over for a walk or to fish! The bike path that runs along Hoover is just across the street! Spacious living room with a picture window with a beautiful view. Formal dining room as well as an eat in kitchen with new stainless appliances. 4 large bedrooms and updated bathrooms with custom tile finishes. This charming home has a huge unfinished basement that has been waterproofed and is perfect for addional living space. Plenty of off street parking and a two car garage. This is a large lot for lots of privacy. Looking for an 18 month lease. Westerville schools. No pets or smoking and shed is not for tenant use. This property allows self guided viewing without an appointment. Contact for details.',
		1, 2);
		
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('1109 24th Ave, Columbus, OH 43211', 1300, 3, 1, 'https://photos.zillowstatic.com/fp/09f2fed9061026c30863b313e2da93d6-uncropped_scaled_within_1536_1152.webp', 1300, 
					 'Three bedroom HOUSE - Welcome to 1109 E. 24th St. located in North Columbus. This is a three bedroom, cape cod style home with the largest of the three bedrooms being upstairs. One bath and an eat in kitchen. Hardwood flooring, brand new kitchen and bathroom, Full basement with washer and dryer hookup. Garage in back yard accessible from the alleyway. Wateris an additional $100 monthly to be paid with rent 
Residents must supply their own appliances 
App fee is $35 per adult and non-refundable 
-3x rent in monthly gross income 
-No evictions in the past 5 years 
-No balances due to previous landlords 
-No felonies in the past 10 years 
-Pass full national credit & criminal background check at time of application', 1, 27);

INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('1 Fearon Manor, Powell, Ohio 43015', 23500, 13, 8, 'https://www.gannett-cdn.com/presto/2018/09/10/PDEM/fb211df4-d0ef-4088-81c5-cfd11d2490e2-1.jpg', 
	   1800, 'This is this house of Lord Stainton Fearon, First of his name and leige-lord of all that he surveys. You should mind your business. You already have enough information about this house. You do not need any more. You also cannot afford this. Please move along before we call security to move you along. Thank you in advance. Please do not come back under any circumstances - or unless your networth exceeds 178 million dollars.', 1, 10);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('3169 Longspur Dr, Columbus, OH 43228, OH 43119', 1995, 3, 2, 'https://maps.googleapis.com/maps/api/streetview?location=3169+Longspur+Dr%2C+Columbus%2C+OH+43228&size=768x576&key=AIzaSyARFMLB1na-BBWf7_R3-5YOQQaHqEJf6RQ&source=outdoor&&signature=Ioyo7sKQiK8otDOvP0DAQI9csqc=', 
	   1258, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras ornare arcu dui vivamus arcu. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Blandit cursus risus at ultrices mi tempus imperdiet nulla. Nam libero justo laoreet sit amet. A diam sollicitudin tempor id eu nisl nunc mi ipsum. Scelerisque eleifend donec pretium vulputate sapien nec. Et malesuada fames ac turpis egestas. Dui id ornare arcu odio ut sem. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Dignissim cras tincidunt lobortis feugiat vivamus. Amet nisl purus in mollis nunc sed id. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan. Fermentum leo vel orci porta. Duis at tellus at urna condimentum mattis. Gravida quis blandit turpis cursus in hac habitasse. Vitae elementum curabitur vitae nunc sed. Iaculis nunc sed augue lacus viverra vitae congue eu. Iaculis at erat pellentesque adipiscing.', 1, 19);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('120 W Blake Ave, Columbus, OH 43202', 1575, 2, 1, 'https://photos.zillowstatic.com/fp/fedc08af2d57f776ac57b6f2c1ec9356-uncropped_scaled_within_1536_1152.webp', 
	   1375, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras ornare arcu dui vivamus arcu. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Blandit cursus risus at ultrices mi tempus imperdiet nulla. Nam libero justo laoreet sit amet. A diam sollicitudin tempor id eu nisl nunc mi ipsum. Scelerisque eleifend donec pretium vulputate sapien nec. Et malesuada fames ac turpis egestas. Dui id ornare arcu odio ut sem. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Dignissim cras tincidunt lobortis feugiat vivamus. Amet nisl purus in mollis nunc sed id. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan. Fermentum leo vel orci porta. Duis at tellus at urna condimentum mattis. Gravida quis blandit turpis cursus in hac habitasse. Vitae elementum curabitur vitae nunc sed. Iaculis nunc sed augue lacus viverra vitae congue eu. Iaculis at erat pellentesque adipiscing.', 1, 13);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('2986 E Powell Rd, Columbus, OH 43240', 1950, 3, 2.5, 'https://photos.zillowstatic.com/fp/f2d8bd5af6d962b66a38a47bdfdc9052-cc_ft_768.webp', 
	   1800, 'Venenatis urna cursus eget nunc scelerisque viverra mauris in. Scelerisque eleifend donec pretium vulputate sapien. Sagittis vitae et leo duis ut diam quam. Nisi lacus sed viverra tellus in. Libero enim sed faucibus turpis in eu mi bibendum neque. Tristique sollicitudin nibh sit amet commodo. Euismod lacinia at quis risus sed vulputate odio. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat. Suspendisse faucibus interdum posuere lorem ipsum dolor. Enim lobortis scelerisque fermentum dui faucibus in ornare quam.', 1, 10);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('6000 Sundrops Ave, Galloway, OH 43119', 1800, 3, 2, 'https://photos.zillowstatic.com/fp/b8682f6904dda8fc30f192fbd6b7c734-cc_ft_768.webp', 
	   1404, 'Fermentum iaculis eu non diam phasellus vestibulum. Diam ut venenatis tellus in. Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Odio ut enim blandit volutpat maecenas volutpat. Nisl nunc mi ipsum faucibus vitae aliquet nec. Ut pharetra sit amet aliquam. Penatibus et magnis dis parturient montes. Sed cras ornare arcu dui vivamus arcu felis. Cursus metus aliquam eleifend mi in. Diam donec adipiscing tristique risus nec feugiat. Sed vulputate odio ut enim.', 1, 21);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('6993 Richfield Dr, Reynoldsburg, OH 43068', 2085, 3, 2, 'https://photos.zillowstatic.com/fp/9be09309b3da361d2d9da5d07ecce3b3-cc_ft_768.webp', 
	   1296, 'Vestibulum sed arcu non odio euismod. Euismod quis viverra nibh cras pulvinar mattis nunc sed blandit. Volutpat ac tincidunt vitae semper quis lectus nulla at. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel. At erat pellentesque adipiscing commodo elit at imperdiet dui. Imperdiet proin fermentum leo vel orci porta non pulvinar neque. Gravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. Vitae et leo duis ut diam quam nulla. Duis at tellus at urna condimentum mattis pellentesque. Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Dolor sit amet consectetur adipiscing. Tellus at urna condimentum mattis pellentesque. Varius sit amet mattis vulputate enim nulla aliquet.', 1, 9);
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('4311 Sidway Ave, Columbus, OH 43227', 1495, 3, 2, 'https://photos.zillowstatic.com/fp/c641c08fcf0c0ae3d0c7ba69345971a9-cc_ft_768.webp', 
	   1218, 'Auctor eu augue ut lectus arcu. Luctus venenatis lectus magna fringilla urna porttitor. Pretium lectus quam id leo in vitae turpis massa. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Tristique nulla aliquet enim tortor at auctor urna nunc. Morbi blandit cursus risus at ultrices mi. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nisl vel pretium lectus quam id leo in. Ut aliquam purus sit amet luctus venenatis lectus magna. Elementum integer enim neque volutpat ac tincidunt vitae.', 1, 20);
	   
	   
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('799 Warwick Dr, Westerville, OH 43082', 1097, 1, 1, 'https://photos.zillowstatic.com/fp/7352fea50dcb0374d96fc0b52a76756e-cc_ft_1152.webp', 
	   1218, 'The Ravines at Westar', 2, 15);
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('4460 Mountain Laurel Dr, Hilliard, OH 43026', 1357, 2, 1, 'https://photos.zillowstatic.com/fp/c25d82fb7c7074086662319b667ec8bc-cc_ft_1152.webp', 
	   912, 'Venenatis urna cursus eget nunc scelerisque viverra mauris in. Scelerisque eleifend donec pretium vulputate sapien. Sagittis vitae et leo duis ut diam quam. Nisi lacus sed viverra tellus in. Libero enim sed faucibus turpis in eu mi bibendum neque. Tristique sollicitudin nibh sit amet commodo. Euismod lacinia at quis risus sed vulputate odio. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat. Suspendisse faucibus interdum posuere lorem ipsum dolor. Enim lobortis scelerisque fermentum dui faucibus in ornare quam.', 2, 18);
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('5260 Franklin St, Hilliard, OH 43026', 1461, 2, 2, 'https://photos.zillowstatic.com/fp/9c05c5e67a840c42af73c4a45c36add5-cc_ft_1152.webp', 
	   723, 'Fermentum iaculis eu non diam phasellus vestibulum. Diam ut venenatis tellus in. Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Odio ut enim blandit volutpat maecenas volutpat. Nisl nunc mi ipsum faucibus vitae aliquet nec. Ut pharetra sit amet aliquam. Penatibus et magnis dis parturient montes. Sed cras ornare arcu dui vivamus arcu felis. Cursus metus aliquam eleifend mi in. Diam donec adipiscing tristique risus nec feugiat. Sed vulputate odio ut enim.', 2, 26);
INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, due_day) 
VALUES ('300 Springboro Ln, Columbus, OH 43235', 935, 3, 2, 'https://photos.zillowstatic.com/fp/61b78c36f0bc1655179d7eba822337f7-cc_ft_1152.webp', 
	   300, 'Auctor eu augue ut lectus arcu. Luctus venenatis lectus magna fringilla urna porttitor. Pretium lectus quam id leo in vitae turpis massa. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Tristique nulla aliquet enim tortor at auctor urna nunc. Morbi blandit cursus risus at ultrices mi. Nisi vitae suscipit tellus mauris a diam maecenas sed. Nisl vel pretium lectus quam id leo in. Ut aliquam purus sit amet luctus venenatis lectus magna. Elementum integer enim neque volutpat ac tincidunt vitae.', 1, 13);
	   
INSERT INTO property_users(property_id, renter_id)
VALUES (1, 11);
UPDATE property SET is_rented = true
WHERE property_id = 1;
INSERT INTO property_users(property_id, renter_id)
VALUES (1, 12);
INSERT INTO property_users(property_id, renter_id)
VALUES (2, 13);
UPDATE property SET is_rented = true
WHERE property_id = 2;
INSERT INTO property_users(property_id, renter_id)
VALUES (2, 14);
INSERT INTO property_users(property_id, renter_id)
VALUES (3, 15);
UPDATE property SET is_rented = true
WHERE property_id = 3;
INSERT INTO property_users(property_id, renter_id)
VALUES (6, 16);
UPDATE property SET is_rented = true
WHERE property_id = 6;
INSERT INTO property_users(property_id, renter_id)
VALUES (9, 17);
UPDATE property SET is_rented = true
WHERE property_id = 9;
INSERT INTO property_users(property_id, renter_id)
VALUES (13, 18);
UPDATE property SET is_rented = true
WHERE property_id = 13;
INSERT INTO property_users(property_id, renter_id)
VALUES (7, 19);
UPDATE property SET is_rented = true
WHERE property_id = 7;


	   
INSERT INTO maintenance(title, property_id, description)
VALUES ('leaky roof', 1,  'my roof in the living room is leaking!' );
INSERT INTO maintenance(title,  property_id, description)
VALUES ('toilet not flushing', 2,  'downstairs toilet seems to be clogged' );
INSERT INTO maintenance(title, property_id, description)
VALUES ('light fixture broken', 3,  'the light is flickering. Not the bulb.' );
INSERT INTO maintenance(title,  property_id, description)
VALUES ('hole in wall', 4, 'My name is Kyle. I get mad sometimes.' );
INSERT INTO maintenance(title, worker_id, property_id, maintenance_status, description)
VALUES ('handrail broken', 6, 1, 'IN PROGRESS', 'handrail going upstairs is broken.' );
INSERT INTO maintenance(title, worker_id, property_id, maintenance_status, description)
VALUES ('washing machine broken', 7, 2, 'COMPLETE','Washing machine will not turn off.');
INSERT INTO maintenance(title, worker_id, property_id, maintenance_status, description)
VALUES ('dryer broken', 7, 2, 'COMPLETE','dryer will not turn off.');
INSERT INTO maintenance(title, worker_id, property_id, maintenance_status, description)
VALUES ('stove broken', 7, 3, 'IN PROGRESS','stove will not turn on.');

UPDATE property SET rent_status = 'PAID'
WHERE property_id = 7;
UPDATE property SET rent_status = 'PAID'
WHERE property_id = 2;
UPDATE property SET rent_status = 'PAID'
WHERE property_id = 6;
UPDATE property SET rent_status = 'PAID'
WHERE property_id = 9;



COMMIT TRANSACTION;

