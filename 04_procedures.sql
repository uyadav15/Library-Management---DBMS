-- Overdue Books
CREATE PROCEDURE overdue_book IS
BEGIN
    FOR o IN (
        SELECT title
        FROM borrows 
        INNER JOIN (book INNER JOIN items ON items.i_id = book.i_id) 
        ON borrows.i_id = items.i_id
        WHERE borrows.duedate < SYSDATE
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(o.title);
    END LOOP;
END;

-- Overdue E-Books
CREATE PROCEDURE overdue_ebook IS
BEGIN
    FOR o IN (
        SELECT title
        FROM borrows 
        INNER JOIN (ebook INNER JOIN items ON items.i_id = ebook.i_id) 
        ON borrows.i_id = items.i_id
        WHERE borrows.duedate < SYSDATE
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(o.title);
    END LOOP;
END;

-- Overdue Journals
CREATE PROCEDURE overdue_journal IS
BEGIN
    FOR o IN (
        SELECT title
        FROM borrows 
        INNER JOIN (journal INNER JOIN items ON items.i_id = journal.i_id) 
        ON borrows.i_id = items.i_id
        WHERE borrows.duedate < SYSDATE
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(o.title);
    END LOOP;
END;
