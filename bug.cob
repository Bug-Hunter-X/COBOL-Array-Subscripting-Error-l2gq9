01  WS-AREA.         
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 10 TIMES. 
       10  WS-ENTRY PIC X(20). 

       PROCEDURE DIVISION. 
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 10 
              MOVE "Record" & WS-I TO WS-TABLE(WS-I) 
              ADD 1 TO WS-COUNT 
           END-PERFORM. 
           DISPLAY "Records processed: " WS-COUNT. 
           STOP RUN.