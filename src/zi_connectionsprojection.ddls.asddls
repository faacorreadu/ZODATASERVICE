@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_CONNECTIONSCDS'
define root view entity ZI_CONNECTIONSPROJECTION
  provider contract transactional_interface
  as projection on ZR_CONNECTIONSCDS
{
  key ConnectionID,
  CarrierID,
  FlightNo,
  DepCity,
  ArrCity,
  FlightDate,
  Price,
  CurrencyCode,
  LocalLastChangedAt
  
}
