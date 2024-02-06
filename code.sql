CREATE SCHEMA IF NOT EXISTS railway_system;
show databases;
use railway_system;


CREATE TABLE IF NOT EXISTS Reservation (
Train_id int,
Train_name Text,
Train_type TEXT,
Coaches TEXT,
PNR_no int,
First_name TEXT,
Last_name TEXT,   
Contact TEXT,
Email_id TEXT,   
Booking_id text,
Booking_date  date,  
Source_station TEXT,    
Destination_station TEXT,
Seat_alloted TEXT,    
State TEXT,    
City TEXT,   
Duration_minutes INT,    
Payment_mode TEXT,
Fair int,   
Booking_status TEXT,
Meal_booked BOOLEAN);
       
insert into Reservation (Train_id, Train_name, Train_type, Coaches,PNR_no, First_name, Last_name, Contact, Email_id, Booking_id, Booking_date,  Source_station, Destination_station, Seat_alloted, State, City, Duration_minutes, Payment_mode, Fair, Booking_status, Meal_booked)
values
    (12490, 'Samparak_Kranti','Express', 25,45327839, 'Sneha', 'Jain', 9876543210, 'sneha@example.com', 6, '2023/09/25', 'Jaipur', 'Delhi', 5, 'Rajasthan', 'Jaipur', 180, 'Online', 640, 'Confirmed', true),
    (11450, 'Varanasi Super', 'Express', 25,47836904, 'Rahul', 'Verma', 8765432109, 'rahul@example.com', 7, '2023/08/21', 'Mumbai', 'Pune', 3, 'Maharashtra', 'Mumbai', 120, 'Online', 750, 'Waiting', false),
    (42999, 'Memu 2', 'Passenger', 10, 45527842, 'Amit', 'Yadav', 9876543211, 'amit@example.com', 8, '2023/07/15', 'Delhi', 'Agra', 6, 'UP', 'Delhi', 240, 'Cash', 350, 'Confirmed', true),
    (80124, 'Vandebharat', 'Superfast', 20,45627843, 'Neha', 'Singh', 8765432108, 'neha@example.com', 9, '2023/10/08', 'Kolkata', 'Chennai', 8, 'West Bengal', 'Kolkata', 300, 'Cash', 270, 'Confirmed', true),
    (71424, 'Shanti Express', 'Express', 22,45727844, 'Rajat', 'Mishra', 9876543212, 'rajat@example.com', 10, '2023/11/28', 'Bhopal', 'Indore', 3, 'MP', 'Bhopal', 90, 'Online', 300, 'Waiting', false),
    (62374, 'Rajdhani ', 'Rajdhani', 25,45927845, 'Sachin', 'Kumar', 9456789123, 'sachin@example.com', 11, '2023/09/10', 'Varanasi', 'Lucknow', 4, 'UP', 'Varanasi', 150, 'Cash', 450,'Confirmed', true),
    (56479, 'Duronto Express', 'Express', 18,46027846, 'Anjali', 'Gupta', 9876543213, 'anjali@example.com', 12, '2023/07/30', 'Chennai', 'Bangalore', 5, 'Tamil Nadu', 'Chennai', 180, 'Online', 800, 'Confirmed', false),
    (47941, 'Shatabdi', 'Super fast', 15, 46127847, 'Vishal', 'Sharma', 8765432107, 'vishal@example.com', 13, '2023/10/15', 'Hyderabad', 'Bangalore', 7, 'Telangana', 'Hyderabad', 210, 'Cash', 740, 'Confirmed', true),
    (25473, 'Local', 'Passenger', 18,46227848, 'Preeti', 'Verma', 9876543214, 'preeti@example.com', 14, '2023/11/05', 'Ahmedabad', 'Surat', 3, 'Gujarat', 'Ahmedabad', 120, 'Online', 1200, 'Confirmed', false),
    (14789, 'Darbhanga Expresss', 'Superfast', 20,46327849, 'Aryan', 'Rajput', 8765432106, 'aryan@example.com', 15, '2023/09/20', 'Delhi', 'Jaipur', 6, 'Rajasthan', 'Delhi', 240, 'Online', 550, 'Confirmed', true),
    (14228, 'Mahamna','Express', 20,45267838, 'Manish', 'Sharma', 9569090882, 'dixit571@gmail.com', 1 , '2023/07/12', 'Harpalpur', 'Delhi', 1, 'MP', 'Harpalpur', '120', 'Online', 640, 'Waiting', False),
	(25486, 'Ambedkar Express', 'Express', 24,45327840, 'Vipul', 'Rabari', 9545789346, 'vr71@gmail.com', 2 , '2022/09/11', 'Ahmedabad', 'Mumbai', 2, 'Gujrat', 'Ahmedabad', '270', 'Cash', 780, 'Confirmed', True),
	(47111, 'Enter_City','Express', 22,45247875, 'Harshit', 'Shahu', 9046987634, 'kp91@gmail.com', 3 , '2023/06/10', 'Ropad', 'Delhi', 2, 'Punjab', 'Ropad', '460', 'Cash', 220,'Confirmed', True),
	(14816, 'Memu ','Passenger', 12,45027849, 'Prince', 'Parihar', 9935677846, 'dg41@gmail.com', 4 , '2023/08/16', 'Chhatarpur', 'Bhopal', 4, 'MP', 'Chhatarpur', '90', 'Online', 100, 'Waiting', False),
	(48231, 'Chambal','Express', 25,45827848, 'Kapil', 'Payak', 8765942461, 'rk51@gmail.com', 5 , '2023/11/03', 'Lucknow', 'Banda', 10, 'UP', 'Lucknow', '620', 'Cash', 1350, 'Confirmed', True);
    
USE railway_system;

ALTER TABLE Reservation
ADD COLUMN km INT;

select * from Reservation;

UPDATE Reservation
SET km = CASE
    WHEN Train_id = 12490 THEN 840
    WHEN Train_id = 11450 THEN 200
    WHEN Train_id = 42999 THEN 150
    WHEN Train_id = 80124 THEN 250
    WHEN Train_id = 71424 THEN 300
    WHEN Train_id = 62374 THEN 180
    WHEN Train_id = 56479 THEN 220
    WHEN Train_id = 47941 THEN 270
    WHEN Train_id = 25473 THEN 320
    WHEN Train_id = 14789 THEN 180
    WHEN Train_id = 14228 THEN 120
    WHEN Train_id = 25486 THEN 270
    WHEN Train_id = 47111 THEN 460
    WHEN Train_id = 14816 THEN 90
    WHEN Train_id = 48231 THEN 620
    ELSE 0
END;

select * from Reservation;