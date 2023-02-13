SECREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

CREATE TABLE Movie (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Release DATE NOT NULL,
    Duration INT NOT NULL
);

CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    MovieID INT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

INSERT INTO Customer (Name, Phone, Email)
VALUES
    ('Jackie Chan', '555-555-1212', 'jchan1234@email.com'),
    ('Joey Chan', '555-555-1213', 'joeChan3456@email.com');

INSERT INTO Movie (Title, Release, Duration)
VALUES
    ('The Avengers', '2012-04-25', 143),
    ('Inception', '2010-07-16', 148);

INSERT INTO Ticket (CustomerID, MovieID, Date, Time, Price)
VALUES
    (1, 1, '2023-02-13', '20:00:00', 12.99),
    (2, 2, '2023-02-13', '22:00:00', 14.99);
