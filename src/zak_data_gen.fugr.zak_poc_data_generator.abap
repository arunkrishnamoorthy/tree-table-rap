FUNCTION ZAK_POC_DATA_GENERATOR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------

data: ls_header type zak_poc_so_hdr,
      ls_item type zak_poc_so_item.

  ls_header-currency = 'USD'.
  ls_header-net_value = '500'.
  ls_header-status = 'Open'.
  ls_header-valid_from = '20231015'.
  ls_header-valid_to = '20231031'.
  ls_header-vbeln = '12345'.
  modify zak_poc_so_hdr from @ls_header.
  clear: ls_header.

  ls_item-currency = 'USD'.
  ls_item-del_quan = '50'.
  ls_item-matnr = 'ABC'.
  ls_item-net_value = '320'.
  ls_item-posnr = '10'.
  ls_item-quantity = '50'.
  ls_item-uom = 'PC'.
  ls_item-vbeln = '12345'.
  modify zak_poc_so_item from @ls_item.
  clear: ls_item.

  ls_item-currency = 'USD'.
  ls_item-del_quan = '50'.
  ls_item-matnr = 'DEF'.
  ls_item-net_value = '180'.
  ls_item-posnr = '20'.
  ls_item-quantity = '50'.
  ls_item-uom = 'PC'.
  ls_item-vbeln = '12345'.
  modify zak_poc_so_item from @ls_item.
  clear: ls_item.

ENDFUNCTION.
