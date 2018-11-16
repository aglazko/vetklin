CREATE TABLE Med(
  name char,
  id int primary key
);

CREATE TABLE Equipment(
  name char,
  id int primary key
);

CREATE TABLE Animal(
  name char,
  id int primary key,
  sex char
);

CREATE TABLE Client(
  name char,
  birth_date date,
  id int primary key,
  animal_id int
);

CREATE TABLE Chek(
  sum float,
  id int primary key,
  entry_id int
);

CREATE TABLE Entry(
  client_name char,
  animal_id int,
  name char,
  data timestamp,
  reason text,
  id int primary key
);

CREATE TABLE Doctor(
  id int primary key,
  name char,
  experience int,
  work_start time,
  work_end time
);

CREATE TABLE What_med_have(
  doctor_id int primary key,
  med_id int
);

CREATE TABLE What_eq_have(
  doctor_id int primary key,
  eq_id int
);
