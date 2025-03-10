    SELECT
        COALESCE(FAC.book_name, FIC.book_name) as book_name,
        M.member_name,
        M.discount_rate/100 as discount_applied,
        SUM(L.late_fee * (M.discount_rate/100)) as fee_applied
    FROM members AS M 
        INNER JOIN {{ref('stg_loans')}} AS L ON M.member_id = L.member_id
        LEFT JOIN {{ref('stg_books')}} AS FAC ON FAC.book_id=L.book_id
    GROUP BY 1,2,3