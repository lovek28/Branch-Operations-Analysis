-- 1. Calculate monthly revenue per branch
SELECT 
    b.Location,
    p.Month,
    SUM(p.Revenue) AS TotalRevenue
FROM 
    PerformanceMetrics p
JOIN 
    Branches b ON p.BranchID = b.BranchID
GROUP BY 
    b.Location, p.Month
ORDER BY 
    b.Location, p.Month;

-- 2. Calculate average customer satisfaction per branch
SELECT 
    b.Location,
    AVG(p.CustomerSatisfaction) AS AvgCustomerSatisfaction
FROM 
    PerformanceMetrics p
JOIN 
    Branches b ON p.BranchID = b.BranchID
GROUP BY 
    b.Location
ORDER BY 
    AvgCustomerSatisfaction DESC;

-- 3. Identify error trends by type and branch
SELECT 
    b.Location,
    e.ErrorType,
    COUNT(e.Errors) AS TotalErrors
FROM 
    ErrorRates e
JOIN 
    Branches b ON e.BranchID = b.BranchID
GROUP BY 
    b.Location, e.ErrorType
ORDER BY 
    TotalErrors DESC;

-- 4. Analyze productivity metrics
SELECT 
    b.Location,
    pd.Month,
    pd.Employees,
    pd.HoursWorked,
    pd.Output,
    (pd.Output / pd.HoursWorked) AS OutputPerHour
FROM 
    ProductivityData pd
JOIN 
    Branches b ON pd.BranchID = b.BranchID
ORDER BY 
    b.Location, pd.Month;
