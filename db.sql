-- Create the database
CREATE DATABASE blog_db;

-- Use the database
USE blog_db;

-- Create the blog_posts table
CREATE TABLE blog_posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

-- Insert initial data into the blog_posts table
INSERT INTO blog_posts (title, link, description) VALUES
('Materi tentang DNS SERVER', 'https://romallengkong007.blogspot.com/2021/04/materi-tentang-dns-server.html', 
'Pengertian DNS Server: Domain Name System atau DNS adalah sebuah sistem yang membantu manusia dan komputer untuk saling berkomunikasi saat mengakses website melalui internet. Manusia menggunakan nama (URL), komputer menggunakan angka (IP), dan DNS berada di antaranya untuk menerjemahkan URL menjadi angka yang bisa dipahami oleh komputer. Contohnya adalah aplikasi Kontak di smartphone yang menampilkan nama untuk nomor telepon. Sulit bagi kita untuk mengingat kontak setiap orang hanya dengan nomor telepon mereka.'),

('BIOS komputer', 'https://romallengkong007.blogspot.com/2019/11/ekbis-manajemen-marketing-finansial_60.html', 
'Sebenarnya, apa itu BIOS (Basic Input/ Output System)? Pengertian BIOS adalah suatu program komputer yang dibuat dengan bahasa rakitan (Assembly) dimana tugasnya adalah untuk mengatur fungsi hardware pada perangkat komputer.'),

('Bahasa Pascal', 'https://romallengkong007.blogspot.com/2019/12/jumat-30-mei-2014-rangkuman-materi.html', 
'Bahasa Pascal adalah bahasa pemrograman tingkat tinggi yang berorientasi pada segala tujuan, dirancang oleh Professor Niklaus Wirth dari Technical University di Zurich, Switzerland. Nama Pascal diambil sebagai penghargaan terhadap Blaise Pascal, ahli matematik dan filosofi terkenal abad 17 dari Perancis. Ketika Pascal didesain, telah ada sekian banyak bahasa pemrograman, namun hanya sedikit yang digunakan secara luas: FORTRAN, C, Assembler, COBOL. Ide kunci dari bahasa baru ini adalah urutan, yang diatur melalui konsep tipe data yang sangat kuat, dan memerlukan deklarasi dan kontrol program yang terstruktur. Bahasa ini juga didesain untuk menjadi alat bantu pengajaran bagi siswa kelas pemrograman.');
