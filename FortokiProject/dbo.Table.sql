CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    UserEmail VARCHAR(50) NOT NULL,
    UserPassword VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ProjectName VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Activity (
    ActivityID INT PRIMARY KEY IDENTITY(1,1),
    ActivityName VARCHAR(50), 
    ActivityNumber VARCHAR(250),
    Duration TIME,
    ActivityDate DATE,
    ProjectID INT,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
GO