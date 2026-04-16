
CREATE TABLE CUSTOMERS (
CustomerID INT PRIMARY KEY auto_increment,
FullName VARCHAR(100),
Email VARCHAR(100),
City VARCHAR(50),
LastPurchaseDate DATE, -- Ngày mua hàng cuối cùng
-- Trạng thái tài khoản (Active, Locked. .. )

Status VARCHAR(20),
Gender VARCHAR(10),
Date0fBirth DATE,
Points INT,
Address VARCHAR(255)
);
INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
(N'Nguyen Văn A', 'anv@gmail.com', N'Hà Nội', '2025-05-20', 'Active'),

(N'Trần Thị B', 'btt@gmail.com', N'Hà Nội', '2026-02-10', 'Active' ),

(N'Lê Văn C', NULL, N'Ha Noi', '2025-01-15', 'Active' ),

(N'Phạm Minh D', 'dpm@gmail.com', N'Ha Noi', '2024-12-01', 'Locked' ), --

(N'Hoàng An E', 'eha@gmail.com', N'TP HCM', '2025-03-01', 'Active' );
SELECT FullName,Email
FROM CUSTOMERS
WHERE Email IS NOT NULL AND Status='Active';