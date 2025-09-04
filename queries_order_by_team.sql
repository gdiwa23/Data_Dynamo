-- query1

SELECT
    COUNT(*)
FROM
    mystic_manuscript.order_by_team;

-- query2

SELECT
    COUNT(*)
FROM
    (
        SELECT DISTINCT *
        FROM
            order_by_team
    ) AS subquery;

-- query3

SELECT
    COUNT(column_name)
FROM
    information_schema.columns
WHERE
    table_schema = 'mystic_manuscript'
    AND
    table_name = 'order_by_team';

-- query4

SELECT
    ROUND((
        "sum_qrt" + "sum_year" + "sum_month" +
        "sum_date_1" + "sum_day" + "sum_special_day" +
        "sum_online_sale_offers" + "sum_gender" +
        "sum_quantity" + "sum_weekend" + "sum_morning" +
        "sum_afternoon" + "sum_evening" + "sum_night" + "sum_item_price" +
        "sum_shipping_price" + "sum_total_amount" +
        "sum_profit_inr" + "cost_price" + "sum_prof_per"
    )::numeric, 2)
FROM (
    SELECT
        SUM("Qtr") AS sum_qrt,
        SUM("Year") AS sum_year,
        SUM("Month") AS sum_month,
        SUM("Date_1") AS sum_date_1,
        SUM("Special Day"::int) AS sum_special_day,
        SUM("Online Sale Offers"::int) AS sum_online_sale_offers,
        SUM("Weekend"::int) AS sum_weekend,
        SUM("Morning"::int) AS sum_morning,
        SUM("Afternoon"::int) AS sum_afternoon,
        SUM("Evening"::int) AS sum_evening,
        SUM("Night"::int) AS sum_night,
        SUM("Day") AS sum_day,
        SUM("Gender") AS sum_gender,
        SUM("Quantity") AS sum_quantity,
        SUM("Item Price") AS sum_item_price,
        SUM("Shipping-Price") AS sum_shipping_price,
        SUM("Total_amount") AS sum_total_amount,
        SUM("Profit (INR)") AS sum_profit_inr,
        SUM("Cost Price") AS cost_price,
        SUM("Profit Percentage (%)") AS sum_prof_per
    FROM order_by_team
);

-- query5

SELECT
    ROUND(SUM(sum_row)::numeric, 2) AS total
FROM
    (
        SELECT (
            "Qtr" +
            "Month" + "Date_1" + "Day" + "Gender" +
            "Quantity" + "Item Price" + "Shipping-Price" +
            "Total_amount" + "Profit Percentage (%)" + "Year" +
            "Cost Price" + "Profit (INR)"
        ) AS sum_row
        FROM
            order_by_team
    );

-- query6

SELECT
    EXTRACT(MONTH FROM "Date")::int || '/' ||
    EXTRACT(DAY FROM "Date")::int || '/' ||
    EXTRACT(YEAR FROM "Date")::int AS "Date_formatted"
FROM
    mystic_manuscript.order_by_team
ORDER BY
    RANDOM()
LIMIT 5;

-- query7

SELECT
    "ID",
    "Purchase-date",
    "Time",
    "Quarter",
    "Qtr",
    "Year",
    "Month",
    "Date_1",
    "Special Day",
    "Online Sale Offers",
    "Day",
    "Weekend",
    "Morning",
    "Afternoon",
    "Evening",
    "Night",
    "Gender",
    "Customer ID",
    "Gender F=1665 M=1815",
    "Product-Name",
    "Item-Status",
    "Quantity",
    "Currency",
    "Item Price",
    "Shipping-Price",
    "Ship-City",
    "Ship-State",
    "Ship-Postal-Code",
    "Category",
    "Total_amount",
    "Author",
    "Publication",
    "Profit Percentage (%)",
    "Profit (INR)",
    "Cost Price",
    EXTRACT(MONTH FROM "Date")::int || '/' ||
    EXTRACT(DAY FROM "Date")::int || '/' ||
    EXTRACT(YEAR FROM "Date")::int AS "Date"
FROM
    mystic_manuscript.order_by_team
ORDER BY
    RANDOM()
LIMIT
    5;
