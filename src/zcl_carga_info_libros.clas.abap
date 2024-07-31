CLASS zcl_carga_info_libros DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_info_libros IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_acceso     TYPE TABLE OF ztb_acc_categ_aa,
          lt_catego     TYPE TABLE OF ztb_catego_aag,
          lt_clientes   TYPE TABLE OF ztb_clientes_aag,
          lt_clnts_lib  TYPE TABLE OF ztb_clnts_lib_aa,
          lt_libros_aag TYPE TABLE OF ztb_libros_aag.

    lt_acceso = VALUE #( ( bi_categ = '1' tipo_acceso = '1' )
                         ( bi_categ = '2' tipo_acceso = '2' ) ).

    DELETE FROM ztb_acc_categ_aa.
    INSERT ztb_acc_categ_aa FROM TABLE @lt_acceso.
    SELECT * FROM ztb_acc_categ_aa INTO TABLE @lt_acceso.

    lt_catego = VALUE #( ( bi_categ = '1' descripcion = 'Total' )
                         ( bi_categ = '2' descripcion = 'Parcial' ) ).

    DELETE FROM ztb_catego_aag.
    INSERT ztb_catego_aag FROM TABLE @lt_catego.
    SELECT * FROM ztb_catego_aag INTO TABLE @lt_catego.


    lt_clientes = VALUE #( ( id_cliente = '10' tipo_acceso = '1' nombre = 'Jhon' apellidos = 'Smith' email = '1@outlook.com' url = 'N/A' )
                           ( id_cliente = '20' tipo_acceso = '2' nombre = 'Juan' apellidos = 'Sanchez' email = '2@outlook.com' url = 'N/A') ).

    DELETE FROM ztb_clientes_aag.
    INSERT ztb_clientes_aag FROM TABLE @lt_clientes.
    SELECT * FROM ztb_clientes_aag INTO TABLE @lt_clientes.


    lt_clnts_lib = VALUE #( ( id_cliente = '10' id_libro = '1A' )
                            ( id_cliente = '20' id_libro = '2A' ) ).


    DELETE FROM ztb_clnts_lib_aa.
    INSERT ztb_clnts_lib_aa FROM TABLE @lt_clnts_lib.
    SELECT * FROM ztb_clnts_lib_aa INTO TABLE @lt_clnts_lib.

    lt_libros_aag = VALUE #( ( id_libro = '1A'  bi_categ = '1' titulo = 'Supenso' autor = 'Uno mas' editorial = 'La de siempre' idioma = 'S'  paginas = '80' precio = '20.50' moneda = 'MXN' formato = 'Libre' url = 'N/A' )
                             ( id_libro = '2A'  bi_categ = '2' titulo = 'Accion ' autor = 'Dos menos' editorial = 'La misma' idioma = 'S'  paginas = '100' precio = '21.50' moneda = 'MXN' formato = 'Abierto' url = 'N/A' ) ).

    DELETE FROM ztb_libros_aag.
    INSERT ztb_libros_aag FROM TABLE @lt_libros_aag.
    SELECT * FROM ztb_libros_aag INTO TABLE @lt_libros_aag.


    SELECT * FROM ztb_libros_aag INTO TABLE @lt_libros_aag.
    out->write( sy-dbcnt ).
    out->write( 'data_inserted_succesfully' ).


  ENDMETHOD.

ENDCLASS.
