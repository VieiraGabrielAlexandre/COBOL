      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 TABELA-MESES.
           03  FILLER PIC X(009) VALUE "Janeiro".
           03  FILLER PIC X(009) VALUE "Fevereiro".
           03  FILLER PIC X(009) VALUE "Março".
           03  FILLER PIC X(009) VALUE "Abril".
           03  FILLER PIC X(009) VALUE "Maio".
           03  FILLER PIC X(009) VALUE "Junho".
           03  FILLER PIC X(009) VALUE "Julho".
           03  FILLER PIC X(009) VALUE "Agosto".
           03  FILLER PIC X(009) VALUE "Setembro".
           03  FILLER PIC X(009) VALUE "Outubro".
           03  FILLER PIC X(009) VALUE "Novembro".
           03  FILLER PIC X(009) VALUE "Dezembro".
       01  REDEFINES TABELA-MESES.
           03 MES-EXTENSO PIC X(009) OCCURS 12 TIMES.

       01  DATA1 PIC 9(008) VALUE 02031996.
       01  REDEFINES DATA1.
           03 DIA1 PIC 9(002).
           03 MES1 PIC 9(002).
           03 ANO1 PIC 9(004).
       01  DATA2 PIC 9(008) VALUE 03021997.
       01 REDEFINES DATA2.
           03 DIA2 PIC 9(002).
           03 MES2 PIC 9(002).
           03 ANO2 PIC 9(004).
       01  MESENTRADA PIC 9(008) VALUE 00000000.
       01 REDEFINES MESENTRADA.
           03 DIAENTRADA PIC 9(002).
           03 MESENT PIC 9(002).
           03 ANOENTRADA PIC 9(004).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY MES-EXTENSO(MES2).
            DISPLAY MES-EXTENSO(MES1).
      *      DISPLAY "Entre com um numero de 1 a 12: ".
      *      ACCEPT MES-EXTENSO(12).
      *      DISPLAY MES-EXTENSO(4).
             DISPLAY "Digite o numero do mes: ".
             ACCEPT MESENT.
             DISPLAY MES-EXTENSO(MESENT).
             IF MESENT = 1
                   DISPLAY "JANEIRO"
             END-IF.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.

)
