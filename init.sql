CREATE TABLE Med(
  name char(50),
  id int primary key
);

CREATE TABLE Equipment(
  name char(50),
  id int primary key
);

CREATE TABLE Animal(
  name char(50),
  id int primary key,
  sex char
);

CREATE TABLE Client(
  name char(50) unique,
  birth_date date,
  id int primary key,
  animal_id int REFERENCES Animal(id)
);

CREATE TABLE Entry(
  client_name char(50) REFERENCES Client(name),
  animal_id int REFERENCES Animal(id),
  data timestamp,
  reason text,
  id int primary key
);

CREATE TABLE Bill(
  sum float,
  id int primary key,
  entry_id int REFERENCES Entry(id)
);

CREATE TABLE Doctor(
  id int primary key,
  name char(50),
  experience int,
  work_start time,
  work_end time
);

CREATE TABLE What_med_have(
  doctor_id int primary key REFERENCES Doctor(id),
  med_id int REFERENCES Med(id)
);

CREATE TABLE What_eq_have(
  doctor_id int primary key REFERENCES Doctor(id),
  eq_id int REFERENCES Equipment(id)
);
