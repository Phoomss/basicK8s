-- สร้างตาราง Product
CREATE TABLE IF NOT EXISTS Product (
  id SERIAL PRIMARY KEY,
  productname VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  qty INT NOT NULL,
  thumbnail VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  status BOOLEAN NOT NULL
);

-- เพิ่มข้อมูลสินค้า 5 รายการ
INSERT INTO Product (productname, price, qty, thumbnail, status) VALUES
('Product 1', 100.00, 10, 'https://example.com/image1.jpg', TRUE),
('Product 2', 200.00, 20, 'https://example.com/image2.jpg', TRUE),
('Product 3', 300.00, 30, 'https://example.com/image3.jpg', TRUE),
('Product 4', 400.00, 40, 'https://example.com/image4.jpg', TRUE),
('Product 5', 500.00, 50, 'https://example.com/image5.jpg', TRUE);
