// Скалярная функция

CREATE OR REPLACE FUNCTION is_adult(birth_date DATE)
RETURNS boolean AS $$
DECLARE
    days INTEGER;
    result BOOLEAN;
BEGIN
    days := (NOW()::DATE - birth_date::DATE)::INTEGER;
    result := (days / 365) >= 18;

    RETURN result;
END;
$$ LANGUAGE plpgsql;

SELECT is_adult('2002-10-05');