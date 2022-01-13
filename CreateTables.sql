SET DATESTYLE TO PostgreSQL,European;

CREATE SEQUENCE IDSeller;
CREATE TABLE Selleres(
  IDSeller int default nextval('IDSeller'::regclass) PRIMARY KEY,
  Name Varchar(50)
);

CREATE SEQUENCE IDProducts;
CREATE TABLE Products(
  IDProducts int default nextval('IDProducts'::regclass) PRIMARY KEY,
  Product Varchar(100),
  Price Numeric(10,2)
);

CREATE SEQUENCE IDClient;
CREATE TABLE Clients(
  IDClient int default nextval('IDClient'::regclass) PRIMARY KEY,
  Client Varchar(50),
  State Varchar(2),
  Sex Char(1),
  Status Varchar(50)
);

CREATE SEQUENCE IDSale;
CREATE TABLE Sales(
  IDSale int default nextval('IDSale'::regclass) PRIMARY KEY,
  IDSeller int references Selleres (IDSeller),
  IDClient int references Clients (IDClient),
  Data Date,
  Total Numeric(10,2)
);

CREATE TABLE ItensSale (
    IDProducts int REFERENCES Products ON DELETE RESTRICT,
    IDSale int REFERENCES Sales ON DELETE CASCADE,
    Quantity int,
    UnitValue decimal(10,2),
    TotalValue decimal(10,2),
	Discount decimal(10,2),
    PRIMARY KEY (IDProducts, IDSale)
);