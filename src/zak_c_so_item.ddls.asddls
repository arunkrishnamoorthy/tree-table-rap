@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZAK_C_SO_ITEM as select from ZAK_I_SO_ITM
{
    key Vbeln,
    key Posnr,
    Matnr,
    NetValue,
    Currency,
    
    @Semantics.quantity.unitOfMeasure: 'Uom'
    Quantity,
    
    @Semantics.quantity.unitOfMeasure: 'Uom'
    DelQuan,
    Uom,
    /* Associations */
    _header
}
