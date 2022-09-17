-- I had to test the database to make sure everything works fine
SELECT * FROM members; 
SELECT * FROM pending_terminations; 
SELECT * FROM bookings; 
SELECT * FROM rooms;

CALL insert_new_member ('angelolott', '1234abcd', 'AngeloNLott@gmail.com');
SELECT * FROM members ORDER BY member_since DESC;

-- the delete_member procedure
CALL delete_member ('afeil'); 
CALL delete_member ('little31'); 
SELECT * FROM pending_terminations;

CALL update_member_password ('noah51', '18Oct1976'); 
CALL update_member_email ('noah51', 'noah51@hotmail.com'); 
SELECT * FROM members;

SELECT * FROM members WHERE id = 'marvin1'; 

SELECT * FROM bookings WHERE member_id = 'marvin1';

-- the update_payment procudure
CALL update_payment (9);
SELECT * FROM members WHERE id = 'marvin1'; 
SELECT * FROM bookings WHERE member_id = 'marvin1';

CALL search_room('Archery Range', '2017-12-26', '13:00:00');

-- test the make_booking procedure
CALL make_booking ('T1', CURDATE() + INTERVAL 2 WEEK, '11:00:00',  'noah51'); 
CALL make_booking ('AR', CURDATE() + INTERVAL 2 WEEK, '11:00:00',  'macejkovic73'); 
SELECT * FROM bookings;

-- check the cancel_booking procedure
CALL cancel_booking(1, @message); 
SELECT @message;

CALL cancel_booking(12, @message); 
SELECT @message;

select * from members;
