@EndUserText.label: 'KJan error code - Maintain'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZKjan_C_ErrorCode
  as projection on ZKjan_I_ErrorCode
{
  key ErorrCode,
  @Consumption.hidden: true
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _KjanErrorCodeAll : redirected to parent ZKjan_C_ErrorCode_S,
  _KjanErrorCodeText : redirected to composition child ZKjan_C_ErrorCodeText,
  _KjanErrorCodeText.Description : localized
  
}
