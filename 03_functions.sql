-- Function to calculate due date
CREATE FUNCTION calculate_duedate(cal_date IN DATE)
RETURN DATE IS
    n_days DATE;
BEGIN
    n_days := cal_date + 15;
    RETURN n_days;
END;

-- Update existing records
UPDATE borrows SET duedate = (issuedate + 15) WHERE duedate IS NULL;

-- Function to calculate fine
CREATE OR REPLACE FUNCTION calculate_fine(
    d_duedate IN DATE,
    d_returndate IN DATE,
    n_fineperday IN NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN GREATEST(d_returndate - d_duedate, 0) * n_fineperday;
END;

-- Apply fine update
UPDATE borrows 
SET fine = calculate_fine(duedate, returndate, 20) 
WHERE returndate IS NOT NULL;
