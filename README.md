```mermaid
erDiagram
    staff {
       id INT
       name VARCHAR(20)
       gender VARCHAR(10)
       duty_time TIME
       duty_date DATE
    }

    borrower {
        id INT 
        name VARCHAR(20)
        gender VARCHAR(10)
        address TEXT
    }

    category {
        id INT
        name VARCHAR(20)
    }

    bookshelf {
        code VARCHAR(10)
        category_id INT
    }

    books {
        id INT
        title VARCHAR(100)
        author VARCHAR(50)
        publication_year INT
        category_id INT
    }

    borrow_list {
        id INT
        borrower_id INT
        staff_id INT
        book_id INT
        borrow_date DATE
        return_date DATE
    }

    books ||--o{ borrow_list : "borrowed"
    borrower ||--o{ borrow_list : "borrowing"
    staff ||--o{ borrow_list : "keeper"
    category ||--o{ books : "grouping"
    category ||--o{ bookshelf : "menyimpan"

```

## FEATURE

- ERD gambaran umum tentang struktur database
- UP : sql for  create table
- DOWN : sql for delete table
- SEED : sql for insert field table