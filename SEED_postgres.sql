INSERT INTO staff (name, gender, duty_time, duty_date) VALUES
('Budi Santoso', 'Male', '08:00', '2024-06-01'),
('Siti Aminah', 'Female', '09:00', '2024-06-01'),
('Agus Prabowo', 'Male', '10:00', '2024-06-02'),
('Dewi Lestari', 'Female', '11:00', '2024-06-02'),
('Rizky Hidayat', 'Male', '12:00', '2024-06-03'),
('Fitriani Putri', 'Female', '13:00', '2024-06-03'),
('Eko Nugroho', 'Male', '14:00', '2024-06-04'),
('Intan Permata', 'Female', '15:00', '2024-06-04'),
('Joko Susilo', 'Male', '16:00', '2024-06-05'),
('Maya Sari', 'Female', '17:00', '2024-06-05');

INSERT INTO borrower (name, gender, address) VALUES
('Andi Wijaya', 'Male', 'Jl. Merdeka No. 10, Jakarta'),
('Putri Maharani', 'Female', 'Jl. Sudirman No. 21, Bandung'),
('Dedi Kurniawan', 'Male', 'Jl. Diponegoro No. 5, Surabaya'),
('Rina Oktaviani', 'Female', 'Jl. Gajah Mada No. 7, Yogyakarta'),
('Fajar Ramadhan', 'Male', 'Jl. Ahmad Yani No. 12, Semarang'),
('Lestari Dewi', 'Female', 'Jl. Imam Bonjol No. 3, Medan'),
('Bayu Saputra', 'Male', 'Jl. Gatot Subroto No. 8, Palembang'),
('Sari Melati', 'Female', 'Jl. Pahlawan No. 15, Malang'),
('Hendra Gunawan', 'Male', 'Jl. Pemuda No. 2, Makassar'),
('Wulan Sari', 'Female', 'Jl. Kartini No. 18, Denpasar');

INSERT INTO category (id, name) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Science'),
(4, 'History'),
(5, 'Biography');

INSERT INTO bookshelf (code, category_id) VALUES
('BS001', 1),
('BS002', 2),
('BS003', 3),
('BS004', 4),
('BS005', 5),
('BS006', 1),
('BS007', 2),
('BS008', 3),
('BS009', 4),
('BS010', 5);

INSERT INTO books (title, author, publication_year, category_id) VALUES
('Pemrograman Dasar', 'Andi Wijaya', 2018, 1),
('Matematika Lanjut', 'Budi Santoso', 2019, 2),
('Fisika Modern', 'Citra Dewi', 2020, 3),
('Sejarah Indonesia', 'Dewi Lestari', 2017, 4),
('Biologi Umum', 'Eka Putra', 2021, 5),
('Algoritma dan Struktur Data', 'Fajar Pratama', 2018, 1),
('Statistika Dasar', 'Gita Sari', 2019, 2),
('Kimia Organik', 'Hadi Saputra', 2020, 3),
('Geografi Dunia', 'Intan Permata', 2017, 4),
('Ekonomi Mikro', 'Joko Susilo', 2021, 5);

INSERT INTO borrow_list (borrower_id, staff_id, book_id, borrow_date, return_date) VALUES
(1, 1, 1, '2024-06-01', '2024-06-10'),
(2, 2, 2, '2024-06-02', '2024-06-11'),
(3, 3, 3, '2024-06-03', '2024-06-12'),
(4, 4, 4, '2024-06-04', '2024-06-13'),
(5, 5, 5, '2024-06-05', '2024-06-14'),
(1, 2, 6, '2024-06-06', '2024-06-15'),
(2, 3, 7, '2024-06-07', '2024-06-16'),
(3, 4, 8, '2024-06-08', '2024-06-17'),
(4, 5, 9, '2024-06-09', '2024-06-18'),
(5, 1, 10, '2024-06-10', '2024-06-19');
