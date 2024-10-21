-- Extensions
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ID Generation
CREATE OR REPLACE FUNCTION generate_uid(size INT) RETURNS TEXT AS $$
DECLARE
  characters TEXT := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  bytes BYTEA := gen_random_bytes(size);
  l INT := length(characters);
  i INT := 0;
  output TEXT := '';
BEGIN
  WHILE i < size LOOP
    output := output || substr(characters, get_byte(bytes, i) % l + 1, 1);
    i := i + 1;
  END LOOP;
  RETURN output;
END;
$$ LANGUAGE plpgsql VOLATILE;

-- User
CREATE TABLE users (
	id text primary key default generate_uid(8),
	name varchar(64) not null,
	email text unique not null,
	password text not null,
	role text not null check (role in ('super', 'admin', 'manager', 'employee', 'inventory'))
);

-- Products
CREATE TABLE products (
    sku text primary key default generate_uid(10),
    prd_name varchar(100) not null,
    prd_category varchar(100) not null,
    prd_brand varchar(100),
    prd_description text,
    prd_unit_of_measurement varchar(50) not null,
    prd_purchase_price decimal(10,2) not null,
    prd_selling_price decimal(10,2) not null,
    prd_current_stock int not null default 1,
    prd_expiration_date date not null,
    created_at timestamp not null default current_timestamp
);