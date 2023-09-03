CREATE DATABASE KALBE;

-- Membuat tabel 'Inventory' dengan kolom-kolom yang sesuai:
USE KALBE;

CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price INT(50)NOT NULL,
    Item_total INT(50)NOT NULL
);

-- Memasukkan data ke dalam tabel 'Inventory'
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ml', 7000, 20),
    (2343, 'Nutrive Benecol 100ml', 20000, 30),
    (2344, 'Blackmores Vit C 500 mg', 95000, 45),
    (2345, 'Entrasol Gold 370g', 90000, 120);

-- Menampilkan Item_name yang memiliki jumlah tertinggi di Item_total:
SELECT Item_name
FROM Inventory
ORDER BY Item_total DESC
LIMIT 1;

-- Mengupdate Item_price dari output pertanyaan sebelumnya:
UPDATE Inventory
SET Item_price = New_Price
WHERE Item_name = 'Item_name_with_highest_Item_total';

-- Menghapus Item_name yang memiliki jumlah terendah di Item_total:
DELETE FROM Inventory
WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory);

