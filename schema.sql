CREATE TABLE Events (
  EventID INT PRIMARY KEY,
  EventName VARCHAR(100) NOT NULL,
  EventDate DATE NOT NULL,
  Location VARCHAR(100) NOT NULL,
  Capacity INT NOT NULL
);

CREATE TABLE Participants (
  ParticipantID INT PRIMARY KEY,
  FullName VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  Phone VARCHAR(20)
);

CREATE TABLE Registrations (
  RegistrationID INT PRIMARY KEY,
  EventID INT NOT NULL,
  ParticipantID INT NOT NULL,
  RegistrationDate DATE NOT NULL,
  Status VARCHAR(20),
  FOREIGN KEY (EventID) REFERENCES Events(EventID),
  FOREIGN KEY (ParticipantID) REFERENCES Participants(ParticipantID)
);
