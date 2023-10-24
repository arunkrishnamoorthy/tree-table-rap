CLASS zak_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zak_data_gen IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: ls_header TYPE zak_poc_so_hdr,
          ls_item   TYPE zak_poc_so_item.

    ls_header-currency = 'USD'.
    ls_header-net_value = '500'.
    ls_header-status = 'Open'.
    ls_header-valid_from = '20231015'.
    ls_header-valid_to = '20231031'.
    ls_header-vbeln = '12345'.
    MODIFY zak_poc_so_hdr FROM @ls_header.
    CLEAR: ls_header.

    ls_item-currency = 'USD'.
    ls_item-del_quan = '50'.
    ls_item-matnr = 'ABC'.
    ls_item-net_value = '320'.
    ls_item-posnr = '10'.
    ls_item-quantity = '50'.
    ls_item-uom = 'PC'.
    ls_item-vbeln = '12345'.
    MODIFY zak_poc_so_item FROM @ls_item.
    CLEAR: ls_item.

    ls_item-currency = 'USD'.
    ls_item-del_quan = '50'.
    ls_item-matnr = 'DEF'.
    ls_item-net_value = '180'.
    ls_item-posnr = '20'.
    ls_item-quantity = '50'.
    ls_item-uom = 'PC'.
    ls_item-vbeln = '12345'.
    MODIFY zak_poc_so_item FROM @ls_item.
    CLEAR: ls_item.


    out->write( 'Hello world!' ).
  ENDMETHOD.

ENDCLASS.
