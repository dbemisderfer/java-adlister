USE adlister_db;


INSERT INTO users (username, email, password)
VALUES ('Dwight', 'dwight@codeup.com', 'pass'),
       ('Arash', 'arash@codeup.com', 'pass'),
       ('Mindy', 'mindy@codeup.com', 'macaroni');

# TRUNCATE ads;
INSERT INTO ads (title, description, user_id)
VALUES ('Bike For Sale', '10-speed bike in good condition', (SELECT id FROM users WHERE email = 'dwight@codeup.com')),
       ('F-150 Truck For Sale', 'Vehicle in decent shape. Good A/C.', 2),
       ('House For Sale', '5 bed/3 bath', 3),
       ('MARRY MY SON!!!', 'Arranged marriage desired', 3),
       ('Toys for Sick Children', 'Please donate toys to children with cancer.', 2),
       ('Lawn Needs Mowing', 'Need someone to mow my lawn.', 1);


INSERT INTO categories (name)
VALUES ('Personal'),
       ('Housing'),
       ('For Sale'),
       ('Vehicles'),
       ('Charity');

INSERT INTO cat_ad(ad_id, cat_id)
VALUES (1, 3), (2, 3), (2, 4), (3, 2), (3, 3), (4, 1), (5, 5), (6, 1);