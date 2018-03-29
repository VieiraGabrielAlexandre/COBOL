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
       01  Keeping-Track-Variables.
           05 Bottles              PIC S99     VALUE 0.
           05 Remaining-Bottles    PIC S99     VALUE 0.
           05 Couting              PIC 99      VALUE 0.
           05 Start-Position       PIC 99      VALUE 0.
           05 Positions            PIC 99      VALUE 0.
       PROCEDURE DIVISION.
       PASS-AROUND-THOSE-BEERS.
           PERFORM VARYING Bottles FROM 99 BY -1 UNTIL Bottles = -1
               DISPLAY SPACES
               SUBTRACT 1 FROM Bottles GIVING Remaining-Bottles
               EVALUATE Bottles
                   WHEN 0
                       DISPLAY "Sem mais garrafas de cerveja na mesa,"
                           "Sem mais garrafas de cerveja."
                       DISPLAY "Vá para a loja e compre mais,"
                           "99 garrafas de cerveja."
                   WHEN 1
                       DISPLAY "1 Garrafa de cerveja na mesa,"
                           "1 Garrafa Apenas."
                   WHEN 2
                       MOVE ZEROES TO Couting
                       INSPECT Bottles,
                           TALLYING Couting FOR LEADING ZEROES
                       ADD 1 TO Couting GIVING Start-Position
                       SUBTRACT Couting FROM 2 GIVING Positions
                       DISPLAY Bottles (Start-Position:Positions)
                           " Garrafas de Cerveja na mesa,"
                           Bottles (Start-Position:Positions)
                           " Garrafas de cerveja. "
                       MOVE ZEROES TO Couting
                       INSPECT Remaining-Bottles TALLYING
                           Couting FOR LEADING ZEROES
                       ADD 1 TO Couting GIVING Start-Position
                       SUBTRACT Couting FROM 2 GIVING Positions
                       DISPLAY "Pegue uma abaixo e passe, "
                           Remaining-Bottles(Start-Position:Positions)
                           " garrafas de cerveja na mesa"
               END-EVALUATE
           END-PERFORM
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
