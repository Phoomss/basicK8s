-- สร้างตาราง Product
CREATE TABLE Product (
  id INT IDENTITY(1,1) PRIMARY KEY,
  productname NVARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  qty INT NOT NULL,
  thumbnail NVARCHAR(255),
  created_at DATETIME DEFAULT GETDATE(),
  updated_at DATETIME DEFAULT GETDATE(),
  status BIT NOT NULL
);

-- เพิ่มข้อมูลสินค้า 5 รายการ
INSERT INTO Product (productname, price, qty, thumbnail, status) VALUES
('Product 1', 100.00, 10, 'https://example.com/image1.jpg', 1),
('Product 2', 200.00, 20, 'https://example.com/image2.jpg', 1),
('Product 3', 300.00, 30, 'https://example.com/image3.jpg', 1),
('Product 4', 400.00, 40, 'https://example.com/image4.jpg', 1),
('Product 5', 500.00, 50, 'https://example.com/image5.jpg', 1);
