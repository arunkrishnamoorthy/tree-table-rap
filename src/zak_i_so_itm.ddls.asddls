//@AbapCatalog.sqlViewName: 'ZAK_SI001'
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item'
define view entity ZAK_I_SO_ITM as select from zak_poc_so_item
    association        to parent ZAK_I_SO_HDR   as _header        on  $projection.Vbeln = _header.Vbeln
{ 
    key vbeln as Vbeln,
    key posnr as Posnr,
    matnr as Matnr,
    net_value as NetValue,
    currency as Currency,
    quantity as Quantity,
    del_quan as DelQuan,
    uom as Uom,
    
    _header
}
