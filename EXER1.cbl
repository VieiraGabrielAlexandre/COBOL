      ******************************************************************
      * Author: Gabriel Alexandre Vieira
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DT_NASC.
           03 INS_DT.
               05 SUA_DT   PIC 9(8).
               05 REDEFINES SUA_DT.
               07 DIA_NASC PIC 9(2).
               07 MES_NASC PIC 9(2).
               07 ANO_NASC PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Digite o dia em que nasceu: ".
            ACCEPT DIA_NASC.
            DISPLAY "Digite o mes em que nasceu: ".
            ACCEPT MES_NASC.
            DISPLAY "Digite o mes em que nasceu: ".
            ACCEPT ANO_NASC.

            DISPLAY DIA_NASC "/" MES_NASC "/" ANO_NASC.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
