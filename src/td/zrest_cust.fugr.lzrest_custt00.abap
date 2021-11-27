*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZREST_CUST......................................*
DATA:  BEGIN OF STATUS_ZREST_CUST                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZREST_CUST                    .
CONTROLS: TCTRL_ZREST_CUST
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZREST_CUST                    .
TABLES: ZREST_CUST                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
