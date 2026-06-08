CLASS zjahm_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjahm_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data: it_art TYPE STANDARD TABLE OF zjahm_tab_art.

    it_art = value #(
    ( client = sy-mandt id_art = 1 descr = 'Mini colores' descr2 = 'un mini estuche,con mini colores'
    color = 'varios' piezas = 12 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-helvetica-01_600x.jpg?v=1780420440' )
    ( client = sy-mandt id_art = 2 descr = 'Monthly Planner' descr2 = 'Deal para planificar tus metas'
    color = 'negro' piezas = 1 stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-inicial-nombre-serie-01_600x.jpg?v=1602029410' )
    ( client = sy-mandt id_art = 3 descr = 'Marcadores' descr2 = 'Zebra colores'
    color = 'varios' piezas = 5 stock = 20 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-stabilo-boss-verde_600x.jpg?v=1602029211' )
    ( client = sy-mandt id_art = 4 descr = 'Lapiz' descr2 = 'Lapiz Tombowz'
    color = 'negro' piezas = 1 stock = 1 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-lapices-canciones-06_600x.jpg?v=1772503699' )
    ).

    INSERT zjahm_tab_art from table @it_art.
    if sy-subrc = 0.
      out->write( 'Insert succesful' ).
    else.
     out->write( 'Insert wrong' ).
    endif.


  ENDMETHOD.
ENDCLASS.
