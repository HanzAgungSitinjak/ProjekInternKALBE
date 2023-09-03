-- Tabel Dimensi Tanggal
CREATE TABLE Tanggal_Pengiriman (
    ID_Tanggal INT PRIMARY KEY,
    Tanggal DATE,
    Tahun INT,
    Kuartal INT,
    Bulan INT,
    Hari INT
);

-- Tabel Dimensi Produk
CREATE TABLE Product_Dim (
    ID_Produk INT PRIMARY KEY,
    Nama_Produk VARCHAR(255),
    Kategori VARCHAR(50),
    Merek VARCHAR(50)
);

-- Tabel Dimensi Pelanggan
CREATE TABLE Customer_Dim (
    ID_Pelanggan INT PRIMARY KEY,
    Nama_Pelanggan VARCHAR(255),
    Alamat VARCHAR(255),
    Nomor_Telepon VARCHAR(20)
);

-- Tabel Dimensi Toko
CREATE TABLE Store_Dim (
    ID_Toko INT PRIMARY KEY,
    Nama_Toko VARCHAR(255),
    Lokasi VARCHAR(255),
    Manajer VARCHAR(100)
);

-- Tabel Dimensi Karyawan
CREATE TABLE Employee_Dim (
    ID_Karyawan INT PRIMARY KEY,
    Nama_Karyawan VARCHAR(255),
    Posisi VARCHAR(100)
);

-- Tabel Fakta Penjualan
CREATE TABLE Sales_Fact (
    ID_Penjualan INT PRIMARY KEY,
    Tanggal_Penjualan INT, -- Foreign key ke Date_Dim
    ID_Produk INT, -- Foreign key ke Product_Dim
    ID_Pelanggan INT, -- Foreign key ke Customer_Dim
    ID_Toko INT, -- Foreign key ke Store_Dim
    Jumlah_Penjualan DECIMAL(10, 2),
    -- Informasi tambahan tentang penjualan
    FOREIGN KEY (Tanggal_Penjualan) REFERENCES Date_Dim(ID_Tanggal),
    FOREIGN KEY (ID_Produk) REFERENCES Product_Dim(ID_Produk),
    FOREIGN KEY (ID_Pelanggan) REFERENCES Customer_Dim(ID_Pelanggan),
    FOREIGN KEY (ID_Toko) REFERENCES Store_Dim(ID_Toko)
);
