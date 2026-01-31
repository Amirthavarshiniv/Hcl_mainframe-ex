IDENTIFICATION DIVISION.
PROGRAM-ID. EXERCISE.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-NUM   PIC 9(03).
01 WS-I     PIC 9(03).
01 WS-REM   PIC 9(03).
01 WS-QUOT  PIC 9(03).
01 WS-FLAG  PIC X VALUE 'Y'.

PROCEDURE DIVISION.

    MOVE 2 TO WS-NUM.

    PERFORM UNTIL WS-NUM > 200

        MOVE 'Y' TO WS-FLAG
        MOVE 2 TO WS-I

        PERFORM UNTIL WS-I >= WS-NUM
            DIVIDE WS-NUM BY WS-I
                GIVING WS-QUOT
                REMAINDER WS-REM

            IF WS-REM = 0
                MOVE 'N' TO WS-FLAG
                EXIT PERFORM
            END-IF

            ADD 1 TO WS-I
        END-PERFORM

        IF WS-FLAG = 'Y'
            DISPLAY WS-NUM
        END-IF

        ADD 1 TO WS-NUM
    END-PERFORM.

STOP RUN.
