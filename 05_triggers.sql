-- Block inserts on Sunday

CREATE TRIGGER trig1 BEFORE INSERT ON member
FOR EACH ROW
BEGIN
    IF TRIM(TO_CHAR(SYSDATE, 'day')) = 'sunday' THEN
        RAISE_APPLICATION_ERROR(-20000, 'Transactions not allowed today - ' || TO_CHAR(SYSDATE, 'day'));
    END IF;
END;

CREATE TRIGGER trig2 BEFORE INSERT ON items
FOR EACH ROW
BEGIN
    IF TRIM(TO_CHAR(SYSDATE, 'day')) = 'sunday' THEN
        RAISE_APPLICATION_ERROR(-20000, 'Transactions not allowed today - ' || TO_CHAR(SYSDATE, 'day'));
    END IF;
END;

CREATE TRIGGER trig3 BEFORE INSERT ON staff
FOR EACH ROW
BEGIN
    IF TRIM(TO_CHAR(SYSDATE, 'day')) = 'sunday' THEN
        RAISE_APPLICATION_ERROR(-20000, 'Transactions not allowed today - ' || TO_CHAR(SYSDATE, 'day'));
    END IF;
END;

CREATE TRIGGER trig4 BEFORE INSERT ON borrows
FOR EACH ROW
BEGIN
    IF TRIM(TO_CHAR(SYSDATE, 'day')) = 'sunday' THEN
        RAISE_APPLICATION_ERROR(-20000, 'Transactions not allowed today - ' || TO_CHAR(SYSDATE, 'day'));
    END IF;
END;
