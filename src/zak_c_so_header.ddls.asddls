
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption SO Header'
define root view entity ZAK_C_SO_HEADER as select from ZAK_I_SO_HDR
{
    key Vbeln,
    status,
    valid_from,
    valid_to,
    net_value,
    currency,
    /* Associations */
    _items
}
