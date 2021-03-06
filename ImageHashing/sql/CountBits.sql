﻿/*

	 T-SQL version of ImageHashing.BitCount(ulong num) method.
	 Returns the number of ones in binary representation of 64-bit integer @var including the sign bit.

*/
CREATE FUNCTION [dbo].[CountBits]
(@var BIGINT)
RETURNS INT
AS
BEGIN
    DECLARE @counter AS INT = 0;
    SET @counter = 0 + CASE 
	WHEN @var & CAST (1 AS BIGINT) = 1 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2 AS BIGINT) = 2 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4 AS BIGINT) = 4 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (8 AS BIGINT) = 8 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (16 AS BIGINT) = 16 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (32 AS BIGINT) = 32 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (64 AS BIGINT) = 64 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (128 AS BIGINT) = 128 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (256 AS BIGINT) = 256 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (512 AS BIGINT) = 512 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1024 AS BIGINT) = 1024 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2048 AS BIGINT) = 2048 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4096 AS BIGINT) = 4096 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (8192 AS BIGINT) = 8192 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (16384 AS BIGINT) = 16384 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (32768 AS BIGINT) = 32768 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (65536 AS BIGINT) = 65536 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (131072 AS BIGINT) = 131072 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (262144 AS BIGINT) = 262144 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (524288 AS BIGINT) = 524288 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1048576 AS BIGINT) = 1048576 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2097152 AS BIGINT) = 2097152 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4194304 AS BIGINT) = 4194304 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (8388608 AS BIGINT) = 8388608 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (16777216 AS BIGINT) = 16777216 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (33554432 AS BIGINT) = 33554432 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (67108864 AS BIGINT) = 67108864 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (134217728 AS BIGINT) = 134217728 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (268435456 AS BIGINT) = 268435456 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (536870912 AS BIGINT) = 536870912 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1073741824 AS BIGINT) = 1073741824 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2147483648 AS BIGINT) = 2147483648 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4294967296 AS BIGINT) = 4294967296 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (8589934592 AS BIGINT) = 8589934592 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (17179869184 AS BIGINT) = 17179869184 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (34359738368 AS BIGINT) = 34359738368 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (68719476736 AS BIGINT) = 68719476736 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (137438953472 AS BIGINT) = 137438953472 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (274877906944 AS BIGINT) = 274877906944 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (549755813888 AS BIGINT) = 549755813888 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1099511627776 AS BIGINT) = 1099511627776 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2199023255552 AS BIGINT) = 2199023255552 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4398046511104 AS BIGINT) = 4398046511104 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (8796093022208 AS BIGINT) = 8796093022208 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (17592186044416 AS BIGINT) = 17592186044416 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (35184372088832 AS BIGINT) = 35184372088832 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (70368744177664 AS BIGINT) = 70368744177664 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (140737488355328 AS BIGINT) = 140737488355328 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (281474976710656 AS BIGINT) = 281474976710656 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (562949953421312 AS BIGINT) = 562949953421312 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1125899906842624 AS BIGINT) = 1125899906842624 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2251799813685248 AS BIGINT) = 2251799813685248 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4503599627370496 AS BIGINT) = 4503599627370496 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (9007199254740992 AS BIGINT) = 9007199254740992 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (18014398509481984 AS BIGINT) = 18014398509481984 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (36028797018963968 AS BIGINT) = 36028797018963968 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (72057594037927936 AS BIGINT) = 72057594037927936 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (144115188075855872 AS BIGINT) = 144115188075855872 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (288230376151711744 AS BIGINT) = 288230376151711744 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (576460752303423488 AS BIGINT) = 576460752303423488 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (1152921504606846976 AS BIGINT) = 1152921504606846976 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (2305843009213693952 AS BIGINT) = 2305843009213693952 THEN 1 ELSE 0 
	END + CASE 
	WHEN @var & CAST (4611686018427387904 AS BIGINT) = 4611686018427387904 THEN 1 ELSE 0 
	END + CASE 
	-- bigint gets overflowed when the most significant bit is one and the rest is zero
	WHEN @var & CAST (-9223372036854775808 AS BIGINT) = -9223372036854775808 THEN 1 ELSE 0 
	END;
    RETURN (@counter);
END;