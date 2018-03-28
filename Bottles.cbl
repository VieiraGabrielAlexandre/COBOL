      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  AUXILIAR    PIC A(25) VALUE "ABC".
       01  REGISTRO-ALUNO.
           03  NOME-ALUNO.
               05 PRIMEIRONOME PIC A(20) VALUES SPACES.
               05 SOBRENOME    PIC A(20) VALUES SPACES.
           03 SALARIO-ALUNO    PIC 9(10)V99 VALUE ZEROS.
           03 SALARIO-ALUNO-EDIT   PIC ZZZZZZZZZ9,99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
