@AbapCatalog.sqlViewName: 'ZAK_SO001'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
define root view ZAK_I_SO_HDR as select from zak_poc_so_hdr
    composition [0..*] of ZAK_I_SO_ITM as _items // on $projection.Vbeln = _items.Vbeln
{
    key vbeln as Vbeln,
    status,
    valid_from,
    valid_to,
    net_value,
    currency,
    
    _items
}
