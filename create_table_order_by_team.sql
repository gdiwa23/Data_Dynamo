DROP TABLE IF EXISTS order_by_team;

CREATE TABLE order_by_team (
    "ID" INT PRIMARY KEY,
    "Purchase-date" VARCHAR(50),
    "Date" DATE,
    "Time" TIME,
    "Quarter" VARCHAR(20),
    "Qtr" INT CHECK ("Qtr" BETWEEN 1 AND 4),
    "Year" YEAR,
    "Month" INT,
    "Date_1" INT,
    "Special Day" BOOL,
    "Online Sale Offers" BOOL,
    "Day" INT CHECK ("Day" BETWEEN 1 AND 7),
    "Weekend" BOOL,
    "Morning" BOOL,
    "Afternoon" BOOL,
    "Evening" BOOL,
    "Night" BOOL,
    "Gender" INT,
    "Customer ID" VARCHAR(10),
    "Gender F=1665 M=1815" VARCHAR(5),
    "Product-Name" TEXT,
    "Item-Status" VARCHAR(7),
    "Quantity" INT,
    "Currency" CHAR(3),
    "Item Price" FLOAT,
    "Shipping-Price" FLOAT,
    "Ship-City" VARCHAR(50),
    "Ship-State" VARCHAR(50),
    "Ship-Postal-Code" VARCHAR(20),
    "Category" VARCHAR(20),
    "Total_amount" FLOAT,
    "Author" VARCHAR(50),
    "Publication" VARCHAR(100),
    "Profit Percentage (%)" INT,
    "Profit (INR)" FLOAT,
    "Cost Price" FLOAT
);

GRANT SELECT, INSERT, UPDATE ON
mystic_manuscript.order_by_team
TO
da13_sibr, de13_hoab, da13_grdi;

GRANT SELECT ON
mystic_manuscript.order_by_team
TO
github_classroom;
