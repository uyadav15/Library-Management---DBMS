-- Insert members
INSERT INTO member (m_id, name, email, phone_no, road, city)
VALUES (2797, 'Guy Gilbert', 'guy1@.com', 3205550195, 'CORNWOOD WAY', 'HAXBY');

INSERT INTO member (m_id, name, email, phone_no, road, city)
VALUES (3171, 'Kevin Brown', 'kevin0@.com', 1505550189, 'STANLEY STREET', 'MONK');

-- Insert authentications
INSERT INTO authentication (login_id, password, m_id)
VALUES (12237, 'Um$x0Qy2', 2797);

INSERT INTO authentication (login_id, password, m_id)
VALUES (14824, 'apffLcDM', 3171);

-- Insert staff
INSERT INTO staff (staff_id, name)
VALUES (7781, 'Christian Klei');

INSERT INTO staff (staff_id, name)
VALUES (6018, 'Susan Metters');

-- Insert items
INSERT INTO items (i_id, available, staff_id)
VALUES (1, 4, 7781);

INSERT INTO items (i_id, available, staff_id)
VALUES (2, 9, 6018);

-- Insert books
INSERT INTO book (i_id, title, author, isbn, publisher, edition, category)
VALUES (1, 'The Hunger Games', 'Suzanne Collins', '43902348', 'Oxford University Press', 5, 'Phylosophy');

INSERT INTO book (i_id, title, author, isbn, publisher, edition, category)
VALUES (2, 'Harry Potter and the Philosophers Stone', 'J.K. Rowling', '439554934', 'HarperFlamingo Canada', 3, 'Fantasy');

-- Insert ebooks
INSERT INTO ebook (i_id, title, author, isbn, publisher, edition, category)
VALUES (1, 'The Hunger Games', 'Suzanne Collins', '1400032717', 'Oxford University Press', 7, 'Phylosophy');

INSERT INTO ebook (i_id, title, author, isbn, publisher, edition, category)
VALUES (2, 'Harry Potter and the Philosophers Stone', 'J.K. Rowling', '1594633665', 'HarperFlamingo Canada', 10, 'Fantasy');

-- Insert journals
INSERT INTO journal (i_id, title, author, isbn, publisher, category)
VALUES (1, 'A Glorious and Not-So-Short History of the Information Systems Field', 'Hirschheim and R. and Klein and H.', '86670841', 'Journal of AIS', 'Sports analysis');

INSERT INTO journal (i_id, title, author, isbn, publisher, category)
VALUES (2, 'The Information Systems Field Making a Case for Maturity and Contribution', 'Grover and Varun', '49694343', 'Journal of AIS', 'Science');

-- Insert borrows
INSERT INTO borrows (issuedate, returndate, i_id, m_id)
VALUES (TO_DATE('04/29/2022', 'MM/DD/YYYY'), TO_DATE('05/08/2022', 'MM/DD/YYYY'), 1, 2797);

INSERT INTO borrows (issuedate, returndate, i_id, m_id)
VALUES (TO_DATE('05/03/2022', 'MM/DD/YYYY'), TO_DATE('05/10/2022', 'MM/DD/YYYY'), 2, 3171);
