-- Items managed by staff
DECLARE
    id items.i_id%TYPE;
    nam staff.name%TYPE;
    CURSOR c1 IS 
        SELECT items.i_id, staff.name 
        FROM items 
        INNER JOIN staff ON items.staff_id = staff.staff_id;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO id, nam;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(id || ' ' || nam);
    END LOOP;
    CLOSE c1;
END;

-- Items borrowed by member
DECLARE
    id borrows.i_id%TYPE;
    nam member.name%TYPE;
    CURSOR c2 IS 
        SELECT borrows.i_id, member.name 
        FROM borrows 
        INNER JOIN member ON borrows.m_id = member.m_id;
BEGIN
    OPEN c2;
    LOOP
        FETCH c2 INTO id, nam;
        EXIT WHEN c2%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(id || ' ' || nam);
    END LOOP;
    CLOSE c2;
END;
