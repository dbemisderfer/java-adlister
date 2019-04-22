CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

DROP TABLE IF EXISTS cat_ad;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;  # need to drop tables in reverse order!!!


CREATE TABLE users
(
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username     VARCHAR(255) NOT NULL,
  email    VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY unique_username (username),
  UNIQUE KEY unique_email (email)
);

CREATE TABLE ads
(
  id      INT UNSIGNED   NOT NULL AUTO_INCREMENT,
  title    VARCHAR(255)   NOT NULL,
  description   TEXT   NOT NULL,
  user_id INT UNSIGNED   NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE categories
(
  id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE cat_ad
(
  cat_id INT UNSIGNED NOT NULL,
  ad_id  INT UNSIGNED NOT NULL,
  FOREIGN KEY (cat_id) REFERENCES categories (id),
  FOREIGN KEY (ad_id) REFERENCES ads (id)
);