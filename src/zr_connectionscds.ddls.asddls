@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZCONNECTIONSDB'
define root view entity ZR_CONNECTIONSCDS
  as select from zconnectionsdb as Connectionscds
{
  key connection_id as ConnectionID,
  carrier_id as CarrierID,
  flight_no as FlightNo,
  dep_city as DepCity,
  arr_city as ArrCity,
  flight_date as FlightDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  price as Price,
  currency_code as CurrencyCode,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  changed_by as ChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  changed_at as ChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
  
}
