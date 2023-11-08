CLASS zcl_generate_reply_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_reply_table IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA itab TYPE TABLE OF zzreplytable.

*   fill internal travel table (itab)
    itab = VALUE #(
      ( replytable_uuid = '02D5290E594C1EDA93815057FD946624' replytable = 'AN11' replycodesize = 1 isac = '' description = 'Type of Storage' istemporary = ''
         created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680' )
      ( replytable_uuid = '02D5290E594C1EDA93815C50CD7AE62A' replytable = 'AM81' replycodesize = 2 description = 'Storage Location' isac = '' istemporary = ''
         created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680' )
      ( replytable_uuid = '02D5290E594C1EDA93858EED2DA2EB0B' replytable = 'AN12' replycodesize = 2 description = 'Special storage' isac = '' istemporary = ''
         created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by  = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680' )
    ).

*   delete existing entries in the database table
    DELETE FROM zzreplytable.

*   insert the new table entries
    INSERT zzreplytable FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt }  entries inserted successfully!| ).


    DATA itab1 TYPE TABLE OF zzreplycode.

    itab1 = VALUE #( ( reply_table_uuid =  '02D5290E594C1EDA93815057FD946624' reply_code_uuid = '02D5290E594C1EDA93815057FD946611'
                       reply_code = 'B' description = 'ALTERNATE'  is_temporary = '' created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680')
                       ( reply_table_uuid =  '02D5290E594C1EDA93815057FD946624' reply_code_uuid = '02D5290E594C1EDA93815057FD946612'
                       reply_code = 'D' description = 'PREFERED'  is_temporary = '' created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680')
                       ( reply_table_uuid =  '02D5290E594C1EDA93815057FD946624' reply_code_uuid = '02D5290E594C1EDA93815057FD946613'
                       reply_code = 'C' description = 'MANDATORY'  is_temporary = '' created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680')
                        ).

*   delete existing entries in the database table
    DELETE FROM zzreplycode.

*   insert the new table entries
    INSERT zzreplycode FROM TABLE @itab1.

*   output the result as a console message
    out->write( |{ sy-dbcnt }  entries inserted successfully!| ).



  ENDMETHOD.
ENDCLASS.
