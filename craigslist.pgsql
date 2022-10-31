DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist


CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    region_name VARCHAR(15)
);

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(15)
);

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(15) NOT NULL,
    pref_region_id INTEGER REFERENCES regions
);

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    title VARCHAR(15) NOT NULL,
    content TEXT NOT NULL,
    category INTEGER REFERENCES categories ON DELETE SET NULL,
    region_id INTEGER REFERENCES regions ON DELETE SET NULL
);


