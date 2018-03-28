      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *SPECIAL-NAMES.
      *     DECIMAL-POINT IS A COMMA.
      *     NÃO ESQUEÇA DE DESCOMENTAR AS LINHAS ACIMA EM CASO DE WIN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  AUXILIAR    PIC A(25) VALUE "ABC".
       01  REGISTRO-ALUNO.
           03  NOME-ALUNO.
               05 PRIMEIRONOME PIC A(20) VALUES SPACES.
               05 SOBRENOME    PIC A(20) VALUES SPACES.
           03 SALARIO-ALUNO    PIC 9(10)V99 VALUE ZEROS.
           03 SALARIO-ALUNO-EDIT   PIC Z,ZZZ,ZZZ,ZZ9,99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Olá Alunos".
            DISPLAY "Digite seu nome: ".
            ACCEPT PRIMEIRONOME.
            DISPLAY "Digite o salario do aluno: ".
            ACCEPT SALARIO-ALUNO-EDIT.
      *      MOVE SALARIO-ALUNO TO SALARIO-ALUNO-EDIT.
            DISPLAY "Salario Digitado = R$ "SALARIO-ALUNO-EDIT.
            DISPLAY SALARIO-ALUNO-EDIT.

            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
