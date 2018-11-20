CREATE TABLE Med(
  name char(300),
  id int primary key
);

CREATE TABLE Equipment(
  name char(50),
  id int primary key
);

CREATE TABLE Animal(
  name char(50),
  id int primary key,
  sex char(10)
);

CREATE TABLE Client(
  name char(50) unique,
  birth_date date,
  id int primary key,
  animal_id int REFERENCES Animal(id)
);

CREATE TABLE Entry(
  client_name char(50) REFERENCES Client(name),
--   изменила, связь построена не правильно она маст би через принадлежание животного клиенту
  animal_id int REFERENCES Animal(id),
  data timestamp,
  reason text,
  id int primary key
);
-- изменила float на тип money
CREATE TABLE Bill(
  sum money,
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

-- primary key в таком виде как был тут не нужен, т.к он мешает делать отношение 1 к н
CREATE TABLE What_med_have(
  doctor_id int REFERENCES Doctor(id),
  med_id int REFERENCES Med(id),
  primary key(doctor_id,med_id)
);

CREATE TABLE What_eq_have(
  doctor_id int REFERENCES Doctor(id),
  eq_id int REFERENCES Equipment(id),
  primary key (doctor_id, eq_id)
);
