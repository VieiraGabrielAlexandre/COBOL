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
       01  OPCAO               PIC 9(001) VALUE ZERO.
       SCREEN SECTION.
       01  TELA-PRINCIPAL.
           02  BLANK SCREEN BACKGROUND-COLOR 4 FOREGROUND-COLOR 7.
           02  LINE 01 COL 21  VALUE "*------------------------------*".
           02  LINE 02 COL 21  VALUE "*                              *".
           02  LINE 03 COL 21  VALUE "****---Sistema-Ṕrincipal---****".
           02  LINE 04 COL 21  VALUE "*                              *".
           02  LINE 05 COL 21  VALUE "*------------------------------*".
           02  LINE 06 COL 21  VALUE "*                              *".
           02  LINE 07 COL 21  VALUE "*                              *".
           02  LINE 08 COL 21  VALUE "*     1-Incluir Cadastro       *".
           02  LINE 09 COL 21  VALUE "*     2-Alterar Cadastro       *".
           02  LINE 10 COL 21  VALUE "*     3-Excluir Cadastro       *".
           02  LINE 11 COL 21  VALUE "*     4-Consultar Cadastro     *".
           02  LINE 12 COL 21  VALUE "*     5-Relatorio              *".
           02  LINE 13 COL 21  VALUE "*     6-Sair                   *".
           02  LINE 14 COL 21  VALUE "*                              *".
           02  LINE 15 COL 21  VALUE "*     OPCAO ()                 *".
           02  LINE 16 COL 21  VALUE "*                              *".
           02  LINE 17 COL 21  VALUE "*                              *".
           02  LINE 18 COL 21  VALUE "*------------------------------*".

       PROCEDURE DIVISION.
       BEGIN.
               DISPLAY TELA-PRINCIPAL.
               ACCEPT  OPCAO AT 1541 WITH AUTO.
               IF OPCAO < 1 OR 6 >
                   INITIALIZE OPCAO
                   GO  TO BEGIN
                END-IF
               EVALUATE OPCAO
                   WHEN 1

                   WHEN 2

                   WHEN 3 CALL CADUSUARIO USING OPCAO ON OVERFLOW
                                       PERFORM MENSAGEM-SECT

                   WHEN 4 CALL CONUSUARIO USING OPCAO ON OVERFLOW
                                       PERFORM MENSAGEM-SECT

                   WHEN 5 CALL RELUSUARIO USING OPCAO ON OVERFLOW
                                       PERFORM MENSAGEM-SECT

                   WHEN 6 GO TO END-PROGRAMA

                END-EVALUATE.
           END-PROGRAMA.
               DISPLAY     "FIM DE EXECUCAO" AT 2335 WITH REVERSE-VIDEO.
               STOP RUN.
           MENSAGEM-SECT SECTION.
           MENSAGEM.
                     DISPLAY "Rotinas nao disponiveis!" AT 2230 WITH
                               HIGHLIGHT.
                     STOP " ".

           MENSAGEM-FIM.
               EXIT.

       END PROGRAM YOUR-PROGRAM-NAME.
