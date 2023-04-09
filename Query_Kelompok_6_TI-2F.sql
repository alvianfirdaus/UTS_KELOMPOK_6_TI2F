--------------------------------------------------------------------------
--                      PROPERTY KELOMPOK 6 Kelas TI-2F					-- 
--                             Bersifat Rahasia							-- 
-- Alvian Nur Firdaus													-- 
-- Andika Ainur Wibowoe													-- 
-- M Ega Rama Fernanda													--
--------------------------------------------------------------------------


--buat database--
create database UTS_Kelompok_6;

--gunakan database--
use tsql;

--buat dimension tabel kelas--
CREATE TABLE kelas (
	id_kelas VARCHAR (10) PRIMARY KEY,
	nama_kelas VARCHAR (10)
);

--buat dimension tabel matkul--
CREATE TABLE matkul (
	id_matkul VARCHAR (10) PRIMARY KEY,
	nama_matkul VARCHAR (100)
);

--buat dimension tabel pengajar--
CREATE TABLE pengajar (
	id_pengajar VARCHAR (10) PRIMARY KEY,
	nama_pengajar VARCHAR (10)
);

--buat dimension tabel pengawas--
CREATE TABLE pengawas (
	id_pengawas VARCHAR (10) PRIMARY KEY,
	nama_pengawas VARCHAR (100)
);

--buat dimension tabel hari--
CREATE TABLE hari (
	id_hari VARCHAR (10) PRIMARY KEY,
	nama_hari VARCHAR (20)
);

--buat dimension tabel jam--
CREATE TABLE jam (
	id_jam VARCHAR (10) PRIMARY KEY,
	jam_mulai VARCHAR (10),
	jam_akhir VARCHAR (10)
);

--buat dimension tabel ruang--
CREATE TABLE ruang (
	id_ruang VARCHAR (10) PRIMARY KEY,
	nama_ruang VARCHAR (100),
	lantai VARCHAR (10)
);

--buat tabel fakta besar jadwal--
CREATE TABLE jadwal (
	id_jadwal VARCHAR (10),
	id_hari VARCHAR (10),
	id_jam VARCHAR (10),
	id_ruang VARCHAR (10),
	id_kelas VARCHAR (10),
	id_matkul VARCHAR (10),
	id_pengajar VARCHAR (10),
	id_pengawas VARCHAR (10)
	CONSTRAINT FK_jadwal_hari FOREIGN KEY (id_hari) REFERENCES dbo.hari(id_hari),
	CONSTRAINT FK_jadwal_jam FOREIGN KEY (id_jam) REFERENCES dbo.jam(id_jam),
	CONSTRAINT FK_jadwal_ruang FOREIGN KEY (id_ruang) REFERENCES dbo.ruang(id_ruang),
	CONSTRAINT FK_jadwal_kelas FOREIGN KEY (id_kelas) REFERENCES dbo.kelas(id_kelas),
	CONSTRAINT FK_jadwal_matkul FOREIGN KEY (id_matkul) REFERENCES dbo.matkul(id_matkul),
	CONSTRAINT FK_jadwal_pengajar FOREIGN KEY (id_pengajar) REFERENCES dbo.pengajar(id_pengajar),
	CONSTRAINT FK_jadwal_pengawas FOREIGN KEY (id_pengawas) REFERENCES dbo.pengawas(id_pengawas),
	PRIMARY KEY (id_jadwal)
);

--cek isi data tabel kelas--
select *from kelas;

--cek isi data tabel matkul--
select *from matkul;

--cek isi data tabel pengajar--
select *from pengajar;

--cek isi data tabel pengawas--
select *from pengawas;

--cek isi data tabel hari--
select *from hari;

--cek isi data tabel jam--
select *from jam;

--cek isi data tabel ruang--
select *from ruang;

--cek isi data tabel jadwal--
select *from jadwal;

--view--



--tambahan--
delete from jam;