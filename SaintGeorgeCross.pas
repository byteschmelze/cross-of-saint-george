PROGRAM SaintGeorgCross;

USES
	Crt;

PROCEDURE Vertical;
VAR
	x, y : INTEGER;
BEGIN
	FOR x := 1 TO 12 DO  (* 12 rows *)
	BEGIN
		Write (chr(35):56);  (* chr(35) prints initial first hash at column 56*)
		FOR y := 1 TO 9 DO Write (chr(35)); (* additional hashes in the same row *)
		IF x < 12 THEN WriteLn;
	END;
END;

PROCEDURE Horizontal;
VAR
	i, j : INTEGER;
BEGIN
	FOR i := 1 TO 6 DO  (* 6 rows *)
	BEGIN
		FOR j := 1 TO 120 DO Write (chr(35));  (* width of console = 120 characters *)
	END;
END;

BEGIN
	TextBackground (15);  (* background color white *)
	TextColor (12);  (* text color red *)
	ClrScr;  (* clear screen *)
	Vertical;
	WriteLn; (* force line break (which is not intended in 2nd calling of Vertical) *)
	Horizontal;
	Vertical;
	ReadLn;  (* wait for pressing ENTER *)
END.
