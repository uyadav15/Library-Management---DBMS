-- MEMBER TABLE
CREATE TABLE member (
    m_id NUMBER PRIMARY KEY,
    email VARCHAR2(20),
    name VARCHAR2(20),
    phone_no NUMBER(20),
    road VARCHAR2(200),
    city VARCHAR2(20)
);

-- AUTHENTICATION TABLE
CREATE TABLE authentication (
    login_id NUMBER(20) PRIMARY KEY,
    password VARCHAR2(20),
    m_id NUMBER,
    staff_id NUMBER,
    FOREIGN KEY (m_id) REFERENCES member(m_id)
);

-- STAFF TABLE
CREATE TABLE staff (
    staff_id NUMBER PRIMARY KEY,
    name VARCHAR2(20)
);

-- ITEMS TABLE
CREATE TABLE items (
    i_id NUMBER PRIMARY KEY,
    available NUMBER,
    staff_id NUMBER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- BOOK TABLE
CREATE TABLE book (
    isbn VARCHAR(30) PRIMARY KEY,
    title VARCHAR(200),
    edition NUMBER(20),
    author VARCHAR(200),
    category VARCHAR(20),
    publisher VARCHAR(200),
    i_id NUMBER,
    FOREIGN KEY (i_id) REFERENCES items(i_id)
);

-- EBOOK TABLE
CREATE TABLE ebook (
    isbn VARCHAR(30) PRIMARY KEY,
    title VARCHAR(200),
    edition NUMBER(20),
    author VARCHAR(200),
    category VARCHAR(20),
    publisher VARCHAR(200),
    i_id NUMBER,
    FOREIGN KEY (i_id) REFERENCES items(i_id)
);

-- JOURNAL TABLE
CREATE TABLE journal (
    isbn VARCHAR(30) PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(200),
    category VARCHAR(20),
    publisher VARCHAR(200),
    i_id NUMBER,
    FOREIGN KEY (i_id) REFERENCES items(i_id)
);

-- BORROWS TABLE
CREATE TABLE borrows (
    returndate DATE,
    duedate DATE,
    fine NUMBER,
    issuedate DATE,
    m_id NUMBER,
    i_id NUMBER,
    FOREIGN KEY (m_id) REFERENCES member(m_id),
    FOREIGN KEY (i_id) REFERENCES items(i_id)
);
