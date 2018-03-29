      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  AUXILIAR    PIC A(25)   VALUE "ABC".
       77  CEP         PIC 9(8)    VALUE ZEROS.
       77  NOME        PIC A(30)   VALUE SPACES.
       77  AUX         PIC X(1)    VALUE SPACE.
       PROCEDURE DIVISION.
       INICIO.
            DISPLAY "******************".
      *      ACCEPT AUXILIAR AT WITH NO-ECHO.
            ACCEPT CEP WITH AUTO-SKIP.
      *      ACCEPT NOME ON ESCAPE GO TO FIM.Q
            DISPLAY "******************".
       FIM.
           MOVE ALL "-" TO AUX.
           DISPLAY AUX.
           DISPLAY AUXILIAR.
           DISPLAY CEP.
           DISPLAY NOME.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
