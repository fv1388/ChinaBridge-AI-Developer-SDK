-- ChinaBridge AI Initial Database Schema

CREATE TABLE users(
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  full_name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE companies(
  id UUID PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  country VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customers(
  id UUID PRIMARY KEY,
  company_id UUID,
  name VARCHAR(255),
  email VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE business_requests(
  id UUID PRIMARY KEY,
  customer_id UUID,
  title VARCHAR(255),
  status VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
