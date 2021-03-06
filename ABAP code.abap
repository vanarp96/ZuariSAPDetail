function ztesting.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  TABLES
*"      TEMPO STRUCTURE  PA0001
*"----------------------------------------------------------------------

types: begin of intab,
       pernr like pa0001-pernr,
       end of intab.

data: date like sy-datum.

date = sy-datum.


select pernr from pa0001 into corresponding fields of table tempo where begda < date and endda > date.

"DOWNLOADING AN INTERNAL FILE AS A PDF USING GUI DOWNLOAD


"CALL FUNCTION 'GUI_DOWNLOAD'
"EXPORTING
"filename = 'D:\output.PDF'
"filetype = 'ASC'
"write_field_separator = '-'

"TABLES
"data_tab = tempo.


"DOWNLOADING AN INTERNAL FILE AS A PDF USING OPEN DATASET




"lv_filename = 'D:\output.PDF'.
"OPEN DATASET lv_filename FOR OUTPUT IN TEXT MODE ENCODING DEFAULT.
"IF sy-subrc NE 0.
"  WRITE 'FILE NOT FOUND'.
"  EXIT.ELSE.
"LOOP AT TEMPO INTO WA_TEMPO.
"  TRANSFER WA_TEMPO TO lv_filename.
" ENDLOOP.
"ENDIF.
"CLOSE DATASET lv_filename.



endfunction.









*create table exchange for the table "TEMPO" for data to be exchanged to php
