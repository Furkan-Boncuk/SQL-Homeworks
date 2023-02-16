create table test(
	real_type REAL,
	double_type DOUBLE PRECISION,
	numeric_type NUMERIC
);

INSERT INTO test values (1.1234567890764323, 1.1234567890764323, 1.1234567890764323);

select * from test;

create table test2(
	float4_type REAL,
	float8_type DOUBLE PRECISION,
	decimal_type NUMERIC
);

INSERT INTO test2 values (1.1234567890764323, 1.1234567890764323, 1.1234567890764323);

select * from test2;

--data type'ını SELECT ile girip türünü seçebiliriz.
--KARAKTER VERİ TİPLERİ:
SELECT('Lorem'::CHAR(20)); 
SELECT('Lorem'::VARCHAR(20)); 
SELECT('Lorem İpsum Dolor Sit Amet'::TEXT);
--BOOLEAN VERİ TİPİ:
--SELECT(true, 'yes', 't', 1); => TRUE
--SELECT(false, 'no', 'f', 0); => FALSE
SELECT('true'::BOOLEAN);
SELECT('no'::BOOLEAN);
SELECT('1'::BOOLEAN);
SELECT('0'::BOOLEAN);
SELECT(NULL::BOOLEAN);
--DATETIME VERİ TİPİ:
SELECT('1938-03-12'::DATE);
SELECT('1980 December 03 02:16:07'::TIMESTAMP);
