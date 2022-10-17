@EndUserText.label: 'KJan error code Text - Maintain'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZKjan_C_ErrorCodeText
  as projection on ZKjan_I_ErrorCodeText
{
  @ObjectModel.text.element: [ 'LanguageName' ]
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Language', 
      element: 'Language'
    }
  } ]
  key Langu,
  key ErrorCode,
  Description,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _LanguageText.LanguageName : localized,
  _KjanErrorCode : redirected to parent ZKjan_C_ErrorCode,
  _KjanErrorCodeAll : redirected to ZKjan_C_ErrorCode_S
  
}
