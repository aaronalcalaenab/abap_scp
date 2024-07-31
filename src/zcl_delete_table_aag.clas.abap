CLASS zcl_delete_table_aag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_aag IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM ztb_libros_aag.
    IF sy-subrc EQ 0.
      out->write( 'Datos Borrados OK' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
