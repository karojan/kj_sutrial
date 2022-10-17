@EndUserText.label: 'KJan error code Text'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.dataCategory: #TEXT
define view entity ZKjan_I_ErrorCodeText
  as select from ZKJAN_E_C_T
  association [1..1] to ZKjan_I_ErrorCode_S as _KjanErrorCodeAll on $projection.SingletonID = _KjanErrorCodeAll.SingletonID
  association to parent ZKjan_I_ErrorCode as _KjanErrorCode on $projection.ErrorCode = _KjanErrorCode.ErorrCode
  association [0..*] to I_LanguageText as _LanguageText on $projection.Langu = _LanguageText.LanguageCode
{
  @Semantics.language: true
  key LANGU as Langu,
  key ERROR_CODE as ErrorCode,
  @Semantics.text: true
  DESCRIPTION as Description,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _KjanErrorCodeAll,
  _KjanErrorCode,
  _LanguageText
  
}
