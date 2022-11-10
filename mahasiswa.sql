CREATE DATABASE fakultas;

CREATE TABLE jurusan (
  id INTEGER PRIMARY KEY AUTO_INCREMENT, 
  kode CHAR(4) NOT NULL,
  nama VARCHAR(50) NOT NULL
); 

CREATE TABLE mahasiswa (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 id_jurusan INTEGER NOT NULL, 
 nim CHAR(8) NOT NULL,
 nama VARCHAR(50) NOT NULL,
 jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
 tempat_lahir VARCHAR(50) NOT NULL,
 tanggal_lahir DATE NOT NULL,
 alamat VARCHAR(255) NOT NULL,
 FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);


insert into jurusan (kode, nama) values ("APBL", "Administrasi Publik");
insert into jurusan (kode, nama) values ("PTIF", "Pendidukan Teknik Informasi");

insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) values (1, "20406718", "Anggun Cahaya Purnamasari", "perempuan", "Gresik", "2002-04-01", "Jl. Sunan Giri 03");
insert into mahasiswa (id, id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) values ("2", 2, "20406818", "Ahmad Riki Fajar", "laki-laki", "Gresik", "2000-04-11", "Jl. Merdeka 76");

DELETE from mahasiswa WHERE nama = 'Ahmad Riki Fajar';