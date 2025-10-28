CREATE TABLE staff (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(20),
    gender VARCHAR(10),
    duty_time TIME,
    duty_date DATE
);

CREATE TABLE borrower (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(20),
    gender VARCHAR(10),
    address TEXT
);

CREATE TABLE category (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(20)
);

CREATE TABLE bookshelf (
    code VARCHAR(10) UNIQUE,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE books (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publication_year INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE borrow_list (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    borrower_id INT,
    staff_id INT,
    book_id INT,
    borrow_date DATE DEFAULT CURRENT_DATE,
    return_date DATE,
    FOREIGN KEY (borrower_id) REFERENCES borrower(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
