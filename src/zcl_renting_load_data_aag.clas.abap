CLASS zcl_renting_load_data_aag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_renting_load_data_aag IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA: lt_brands TYPE TABLE OF zrent_brands_aag,
        lt_cars   TYPE TABLE OF zrent_cars_aag,
        lt_customers TYPE TABLE OF zrent_custo_aag.

        lt_brands = VALUE #(
                            ( marca = 'ASTON MARTIN' url = 'https://cdn-9.motorsport.com/images/mgl/Y99PXV7Y/s8/aston-martin-logo-2003-1.jpg' )
                            ( marca = 'BMW'          url = 'https://www.carlogos.org/car-logos/bmw-logo-2020.png' ) ).

        DELETE FROM zrent_brands_aag.
        INSERT zrent_brands_aag FROM TABLE @lt_brands.

        SELECT * from zrent_brands_aag into TABLE @lt_brands.

        lt_cars = VALUE #( ( matricula = 'QWE2131' marca = 'BMW' model = 'Serie 3' color = 'Azul' motor = '2.0' potencia = '180' und_potencia = 'CV'
                             combustible = 'Gasolina' consumo = '4.20' fecha_fabrica = '20240712' puertas = '3' precio = '100' moneda = 'USD' alquilado = 'N/A'
                             alq_desde = '20240712' alq_hasta = '20261231' )
                             ( matricula = 'QWE6543' marca = 'ASTON MARTIN' model = 'Serie 3' color = 'Azul' motor = '2.0' potencia = '180' und_potencia = 'CV'
                             combustible = 'Gasolina' consumo = '4.20' fecha_fabrica = '20240712' puertas = '3' precio = '100' moneda = 'USD' alquilado = 'N/A'
                             alq_desde = '20240713' alq_hasta = '20251231' ) ).

                             DELETE FROM zrent_cars_aag.
                             INSERT zrent_cars_aag FROM TABLE @lt_cars.

                             select * from zrent_cars_aag into TABLE @lt_cars.
                             out->write( sy-dbcnt ).
                             out->write( 'zrent_cars_data_inserted_succesfully' ).

       lt_customers = VALUE #( ( doc_id = '094323445SDS3' matricula = 'QWE2131' nombres = 'Olivia' apellidos = 'Allen' email = 'out@gmail.com' cntr_type = 'C1' )
                               ( doc_id = '094323445SDS3' matricula = 'QWE6543' nombres = 'Michael' apellidos = 'Short' email = 'out@gmail.com' cntr_type = 'C3' ) ).

                             DELETE FROM zrent_custo_aag.
                             INSERT zrent_custo_aag FROM TABLE @lt_customers.

                             select * from zrent_custo_aag into TABLE @lt_customers.
                             out->write( sy-dbcnt ).
                             out->write( 'zrent_customers_data_inserted_succesfully' ).



  ENDMETHOD.
ENDCLASS.
