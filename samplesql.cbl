       IDENTIFICATION DIVISION.
       PROGRAM-ID.          PRINTER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

           EXEC SQL DECLARE PRINTER TABLE                                |
           ( PRINTER_NAME                   CHAR(8) NOT NULL,            |
             LASER_PRINTER_IND              CHAR(1) NOT NULL,            |
             SYSTEM_PRINTER_IND             CHAR(1) NOT NULL,            |
             PRINTER_DEST                   CHAR(8) NOT NULL,            |
             PRINTER_UDK                    CHAR(1) NOT NULL,            |
             PRINTER_DESC                   CHAR(55) NOT NULL,           |
             LASER_MODEL                    CHAR(8) NOT NULL,            |
             POST_SCRIPT_IND                CHAR(1) NOT NULL,            |
             PRINTER_LANGUAGE               CHAR(10) NOT NULL,           |
             PCL_IND                        CHAR(1) NOT NULL,            |
             WRITER_NAME                    CHAR(8) NOT NULL             |
           ) END-EXEC.                                                   |

       PROCEDURE DIVISION.
           EXEC SQL                                                      |
              SELECT   PRINTER_DESC                                      |
              INTO    :PRINTER-DESC                                      |
              FROM     PRINTER                                           |
              WHERE   (PRINTER_NAME = :PRINTER-NAME)                     |
EO0912        QUERYNO 6                                                  |
           END-EXEC.                                                     |
