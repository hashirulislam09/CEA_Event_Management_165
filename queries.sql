-- INSERT DATA
INSERT INTO Events VALUES
(1, 'Tech Meetup', '2025-02-10', 'Lahore', 50),
(2, 'Robotics Workshop', '2025-02-15', 'Faisalabad', 30),
(3, 'Startup Pitch Night', '2025-02-20', 'Islamabad', 40);

INSERT INTO Participants VALUES
(101, 'Ali Raza', 'ali.raza@example.com', '0300-1111111'),
(102, 'Sara Khan', 'sara.khan@example.com', '0301-2222222'),
(103, 'Hamza Ahmed', 'hamza.ahmed@example.com', '0302-3333333'),
(104, 'Ayesha Noor', 'ayesha.noor@example.com', '0303-4444444'),
(105, 'Bilal Hussain', 'bilal.h@example.com', '0304-5555555'),
(106, 'Fatima Tariq', 'fatima.t@example.com', '0305-6666666'),
(107, 'Usman Siddiq', 'usman.s@example.com', '0306-7777777');

INSERT INTO Registrations VALUES
(1001, 1, 101, '2025-01-25', 'Confirmed'),
(1002, 1, 102, '2025-01-26', 'Confirmed'),
(1003, 2, 103, '2025-01-27', 'Pending'),
(1004, 2, 104, '2025-01-28', 'Confirmed'),
(1005, 3, 105, '2025-01-29', 'Confirmed'),
(1006, 3, 106, '2025-01-30', 'Cancelled'),
(1007, 1, 107, '2025-01-31', 'Confirmed'),
(1008, 2, 101, '2025-02-01', 'Confirmed'),
(1009, 3, 102, '2025-02-02', 'Pending'),
(1010, 1, 104, '2025-02-03', 'Confirmed');

-- SAMPLE QUERIES
SELECT * FROM Events;
SELECT * FROM Participants;
SELECT * FROM Registrations;

SELECT EventID, COUNT(*) AS TotalRegistrations
FROM Registrations
GROUP BY EventID;

SELECT p.FullName, p.Email, r.Status
FROM Participants p
JOIN Registrations r ON p.ParticipantID = r.ParticipantID
WHERE r.EventID = 1;
