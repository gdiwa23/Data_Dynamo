-- query 8 --checks max number of characters in Product-Name
SELECT
    MAX(LENGTH("Product-Name"))
FROM
    mystic_manuscript.order_by_team;

-- query 9 -- selects 3 random columns and checks for nulls 
SELECT
    col_name,
    CASE col_name -- counts when there are nulls in a column 
        WHEN
            'ID'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "ID" IS NULL
            )
        WHEN
            'Purchase-date'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Purchase-date" IS NULL
            )
        WHEN
            'Date'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Date" IS NULL
            )
        WHEN
            'Time'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Time" IS NULL
            )
        WHEN
            'Quarter'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Quarter" IS NULL
            )
        WHEN
            'Qtr'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Qtr" IS NULL
            )
        WHEN
            'Year'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Year" IS NULL
            )
        WHEN
            'Month'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Month" IS NULL
            )
        WHEN
            'Date_1'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Date_1" IS NULL
            )
        WHEN
            'Special Day'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Special Day" IS NULL
            )
        WHEN
            'Online Sale Offers'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Online Sale Offers" IS NULL
            )
        WHEN
            'Day'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Day" IS NULL
            )
        WHEN
            'Weekend'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Weekend" IS NULL
            )
        WHEN
            'Morning'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Morning" IS NULL
            )
        WHEN
            'Afternoon'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Afternoon" IS NULL
            )
        WHEN
            'Evening'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Evening" IS NULL
            )
        WHEN
            'Night'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Night" IS NULL
            )
        WHEN
            'Gender'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Gender" IS NULL
            )
        WHEN
            'Customer ID'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Customer ID" IS NULL
            )
        WHEN
            'Gender F=1665 M=1815'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Gender F=1665 M=1815" IS NULL
            )
        WHEN
            'Product-Name'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Product-Name" IS NULL
            )
        WHEN
            'Item-Status'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Item-Status" IS NULL
            )
        WHEN
            'Quantity'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Quantity" IS NULL
            )
        WHEN
            'Currency'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Currency" IS NULL
            )
        WHEN
            'Item Price'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Item Price" IS NULL
            )
        WHEN
            'Shipping-Price'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Shipping-Price" IS NULL
            )
        WHEN
            'Ship-City'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Ship-City" IS NULL
            )
        WHEN
            'Ship-State'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Ship-State" IS NULL
            )
        WHEN
            'Ship-Postal-Code'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Ship-Postal-Code" IS NULL
            )
        WHEN
            'Category'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Category" IS NULL
            )
        WHEN
            'Total_amount'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Total_amount" IS NULL
            )
        WHEN
            'Author'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Author" IS NULL
            )
        WHEN
            'Publication'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Publication" IS NULL
            )
        WHEN
            'Profit Percentage (%)'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Profit Percentage (%)" IS NULL
            )
        WHEN
            'Profit (INR)'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Profit (INR)" IS NULL
            )
        WHEN
            'Cost Price'
            THEN (
                SELECT COUNT(*) FROM mystic_manuscript.order_by_team
                WHERE "Cost Price" IS NULL
            )
    END AS null_count
FROM (
    SELECT col_name
    FROM (
        VALUES
        ('ID'),
        ('Purchase-date'),
        ('Date'),
        ('Time'),
        ('Quarter'),
        ('Qtr'),
        ('Year'),
        ('Month'),
        ('Date_1'),
        ('Special Day'),
        ('Online Sale Offers'),
        ('Day'),
        ('Weekend'),
        ('Morning'),
        ('Afternoon'),
        ('Evening'),
        ('Night'),
        ('Gender'),
        ('Customer ID'),
        ('Gender F=1665 M=1815'),
        ('Product-Name'),
        ('Item-Status'),
        ('Quantity'),
        ('Currency'),
        ('Item Price'),
        ('Shipping-Price'),
        ('Ship-City'),
        ('Ship-State'),
        ('Ship-Postal-Code'),
        ('Category'),
        ('Total_amount'),
        ('Author'),
        ('Publication'),
        ('Profit Percentage (%)'),
        ('Profit (INR)'),
        ('Cost Price')
    ) AS columns (col_name)
    ORDER BY RANDOM()
    LIMIT 5 -- limits selection to five random columns 
) AS random_column;
