-- Create Branches table
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    Location VARCHAR(100),
    Manager VARCHAR(100)
);

-- Create PerformanceMetrics table
CREATE TABLE PerformanceMetrics (
    BranchID INT,
    Month DATE,
    Revenue DECIMAL(10,2),
    Transactions INT,
    CustomerSatisfaction DECIMAL(3,2),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

-- Create ProductivityData table
CREATE TABLE ProductivityData (
    BranchID INT,
    Month DATE,
    Employees INT,
    HoursWorked INT,
    Output INT,
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

-- Create ErrorRates table
CREATE TABLE ErrorRates (
    BranchID INT,
    Month DATE,
    Errors INT,
    ErrorType VARCHAR(50),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

-- Insert synthetic data into Branches
INSERT INTO Branches VALUES
(1, 'New York', 'Alice Johnson'),
(2, 'Los Angeles', 'Bob Smith'),
(3, 'Chicago', 'Carol White');

-- Insert synthetic data into PerformanceMetrics
INSERT INTO PerformanceMetrics (BranchID, Month, Revenue, Transactions, CustomerSatisfaction) VALUES
(1, '2023-01-01', 100000.00, 5000, 4.5),
(2, '2023-01-01', 85000.00, 4200, 4.2),
(3, '2023-01-01', 90000.00, 4500, 4.3),
-- Add more data as needed
;

-- Insert synthetic data into ProductivityData
INSERT INTO ProductivityData (BranchID, Month, Employees, HoursWorked, Output) VALUES
(1, '2023-01-01', 50, 2000, 10000),
(2, '2023-01-01', 45, 1800, 9000),
(3, '2023-01-01', 48, 1900, 9500),
-- Add more data as needed
;

-- Insert synthetic data into ErrorRates
INSERT INTO ErrorRates (BranchID, Month, Errors, ErrorType) VALUES
(1, '2023-01-01', 5, 'Inventory'),
(2, '2023-01-01', 3, 'Transaction Errors'),
(3, '2023-01-01', 7, 'Customer Service'),
-- Add more data as needed
;

