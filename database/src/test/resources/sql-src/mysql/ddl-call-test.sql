CREATE TABLE CALL_TEST_RETURN_VALUES (ID INT, VAL VARCHAR(20));
/
CREATE PROCEDURE CALL_TEST_OUT_NUMERIC_TYPES (IN p_id INTEGER, OUT p_bitVal BIT, OUT p_tinyIntVal TINYINT,
OUT p_smallIntVal SMALLINT, OUT p_mediumIntVal MEDIUMINT, OUT p_intVal INT, OUT p_bigIntVal BIGINT,
OUT p_decimalVal DECIMAL(5,2), OUT p_numericVal NUMERIC(7,3))
READS SQL DATA
BEGIN
    SELECT BIT_VAL INTO p_bitVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT TINYINT_VAL INTO p_tinyIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT SMALLINT_VAL INTO p_smallIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT MEDIUMINT_VAL INTO p_mediumIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT INTEGER_VAL INTO p_intVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT BIGINT_VAL INTO p_bigIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT DECIMAL_VAL INTO p_decimalVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
    SELECT NUMERIC_VAL INTO p_numericVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id;
END
/
CREATE PROCEDURE CALL_TEST_INOUT_NUMERIC_TYPES (IN p_id_in INTEGER, IN p_id_out INTEGER, INOUT p_bitVal BIT(8), INOUT p_tinyIntVal TINYINT,
INOUT p_smallIntVal SMALLINT, INOUT p_mediumIntVal MEDIUMINT, INOUT p_intVal INT, INOUT p_bigIntVal BIGINT,
INOUT p_decimalVal DECIMAL(5,2), INOUT p_numericVal NUMERIC(7,3))
MODIFIES SQL DATA
BEGIN
    INSERT INTO SELECT_UPDATE_TEST_NUMERIC_TYPES VALUES(p_id_in, p_bitVal, p_tinyIntVal, p_smallIntVal, p_mediumIntVal,
    p_intVal, p_bigIntVal, p_decimalVal, p_numericVal);
    SELECT BIT_VAL INTO p_bitVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT TINYINT_VAL INTO p_tinyIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT SMALLINT_VAL INTO p_smallIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT MEDIUMINT_VAL INTO p_mediumIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT INTEGER_VAL INTO p_intVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT BIGINT_VAL INTO p_bigIntVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT DECIMAL_VAL INTO p_decimalVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
    SELECT NUMERIC_VAL INTO p_numericVal FROM SELECT_UPDATE_TEST_NUMERIC_TYPES WHERE ID = p_id_out;
END
/
CREATE PROCEDURE CALL_TEST_OUT_STRING_TYPES (IN p_id INTEGER, OUT p_charVal CHAR(20), OUT p_varcharVal VARCHAR(20),
OUT p_tinyTextVal TINYTEXT, OUT p_textVal TEXT, OUT p_mediumTextVal MEDIUMTEXT,
OUT p_longTextVal LONGTEXT, OUT p_setVal VARCHAR(5), OUT p_enumVal VARCHAR(5))
READS SQL DATA
BEGIN
    SELECT CHAR_VAL INTO p_charVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT VARCHAR_VAL INTO p_varcharVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT TINYTEXT_VAL INTO p_tinyTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT TEXT_VAL INTO p_textVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT MEDIUMTEXT_VAL INTO p_mediumTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT LONGTEXT_VAL INTO p_longTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT SET_VAL INTO p_setVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
    SELECT ENUM_VAL INTO p_enumVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id;
END
/
CREATE PROCEDURE CALL_TEST_INOUT_STRING_TYPES (IN p_id_in INTEGER, IN p_id_out INTEGER, INOUT p_charVal CHAR(20), INOUT p_varcharVal VARCHAR(20),
INOUT p_tinyTextVal TINYTEXT, INOUT p_textVal TEXT, INOUT p_mediumTextVal MEDIUMTEXT,
INOUT p_longTextVal LONGTEXT, INOUT p_setVal VARCHAR(5), INOUT p_enumVal VARCHAR(5))
MODIFIES SQL DATA
BEGIN
    INSERT INTO SELECT_UPDATE_TEST_STRING_TYPES VALUES(p_id_in, p_charVal, p_varcharVal, p_tinyTextVal, p_textVal,
    p_mediumTextVal, p_longTextVal, p_setVal, p_enumVal);

    SELECT CHAR_VAL INTO p_charVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT VARCHAR_VAL INTO p_varcharVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT TINYTEXT_VAL INTO p_tinyTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT TEXT_VAL INTO p_textVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT MEDIUMTEXT_VAL INTO p_mediumTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT LONGTEXT_VAL INTO p_longTextVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT SET_VAL INTO p_setVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
    SELECT ENUM_VAL INTO p_enumVal FROM SELECT_UPDATE_TEST_STRING_TYPES WHERE ID = p_id_out;
END
/
CREATE PROCEDURE CALL_TEST_OUT_DATETIME_TYPES (IN p_id INTEGER, OUT p_dateInt DATE, OUT P_timeInt TIME,
OUT p_dateTimeInt DATETIME, OUT p_timestampInt TIMESTAMP)
READS SQL DATA
BEGIN
    SELECT DATE_VAL INTO p_dateInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id;
    SELECT TIME_VAL INTO P_timeInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id;
    SELECT DATETIME_VAL INTO p_dateTimeInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id;
    SELECT TIMESTAMP_VAL INTO p_timestampInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id;
  END
/
CREATE PROCEDURE CALL_TEST_INOUT_DATETIME_TYPES (IN p_id_in INTEGER, IN p_id_out INTEGER, INOUT p_dateInt DATE, INOUT P_timeInt TIME,
INOUT p_dateTimeInt DATETIME, INOUT p_timestampInt TIMESTAMP)
READS SQL DATA
BEGIN
    INSERT INTO SELECT_UPDATE_TEST_DATETIME_TYPES (ID, DATE_VAL, TIME_VAL, DATETIME_VAL,TIMESTAMP_VAL)
    VALUES(p_id_in, p_dateInt, P_timeInt, p_dateTimeInt, p_timestampInt);

    SELECT DATE_VAL INTO p_dateInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id_out;
    SELECT TIME_VAL INTO P_timeInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id_out;
    SELECT DATETIME_VAL INTO p_dateTimeInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id_out;
    SELECT TIMESTAMP_VAL INTO p_timestampInt FROM SELECT_UPDATE_TEST_DATETIME_TYPES WHERE ID = p_id_out;
END
/
CREATE PROCEDURE CALL_TEST_OUT_COMPLEX_TYPES (IN p_id INTEGER, OUT p_binaryVal BINARY(100), OUT p_varBinaryVal VARBINARY(100),
OUT p_tinyBlobVal TINYBLOB, OUT p_blobVal BLOB, OUT p_mediumBlobVal MEDIUMBLOB, OUT p_longBlobVal LONGBLOB)
READS SQL DATA
BEGIN
    SELECT BINARY_VAL INTO p_binaryVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
    SELECT VARBINARY_VAL INTO p_varBinaryVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
    SELECT TINYBLOB_VAL INTO p_tinyBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
    SELECT BLOB_VAL INTO p_blobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
    SELECT MEDIUMBLOB_VAL INTO p_mediumBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
    SELECT LONGBLOB_VAL INTO p_longBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id;
END
/
CREATE PROCEDURE CALL_TEST_INOUT_COMPLEX_TYPES (IN p_id_in INTEGER, IN p_id_out INTEGER, INOUT p_binaryVal BINARY(100),
INOUT p_varBinaryVal VARBINARY(100), INOUT p_tinyBlobVal TINYBLOB, INOUT p_blobVal BLOB, INOUT p_mediumBlobVal MEDIUMBLOB,
INOUT p_longBlobVal LONGBLOB)
MODIFIES SQL DATA
BEGIN
    INSERT INTO SELECT_UPDATE_TEST_COMPLEX_TYPES VALUES(p_id_in, p_binaryVal, p_varBinaryVal, p_tinyBlobVal, p_blobVal, p_mediumBlobVal, p_longBlobVal);

    SELECT BINARY_VAL INTO p_binaryVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
    SELECT VARBINARY_VAL INTO p_varBinaryVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
    SELECT TINYBLOB_VAL INTO p_tinyBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
    SELECT BLOB_VAL INTO p_blobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
    SELECT MEDIUMBLOB_VAL INTO p_mediumBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
    SELECT LONGBLOB_VAL INTO p_longBlobVal FROM SELECT_UPDATE_TEST_COMPLEX_TYPES WHERE ID = p_id_out;
END
/
CREATE PROCEDURE CALL_TEST_OUT_FLOAT_TYPES (IN p_id INTEGER, OUT p_floatVal FLOAT, OUT p_doubleVal DOUBLE)
READS SQL DATA
BEGIN
    SELECT FLOAT_VAL INTO p_floatVal FROM SELECT_UPDATE_TEST_FLOAT_TYPES WHERE ID = p_id;
    SELECT DOUBLE_VAL INTO p_doubleVal FROM SELECT_UPDATE_TEST_FLOAT_TYPES WHERE ID = p_id;
END
/
CREATE PROCEDURE CALL_TEST_INOUT_FLOAT_TYPES (IN p_id INTEGER, INOUT p_floatVal FLOAT, INOUT p_doubleVal DOUBLE)
MODIFIES SQL DATA
BEGIN
    INSERT INTO SELECT_UPDATE_TEST_FLOAT_TYPES VALUES(p_id, p_floatVal, p_doubleVal);
    SELECT FLOAT_VAL INTO p_floatVal FROM SELECT_UPDATE_TEST_FLOAT_TYPES WHERE ID = p_id;
    SELECT DOUBLE_VAL INTO p_doubleVal FROM SELECT_UPDATE_TEST_FLOAT_TYPES WHERE ID = p_id;
END
/
CREATE PROCEDURE CALL_TEST_RETURN_RESULTSET(IN p_id INTEGER)
READS SQL DATA
BEGIN
  SELECT * FROM CALL_TEST_RETURN_VALUES;
END
/

