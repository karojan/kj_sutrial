@EndUserText.label: 'KJan error code'
@AccessControl.authorizationCheck: #CHECK
define view entity ZKjan_I_ErrorCode
  as select from ZKJAN_E_C
  association to parent ZKjan_I_ErrorCode_S as _KjanErrorCodeAll on $projection.SingletonID = _KjanErrorCodeAll.SingletonID
  composition [0..*] of ZKjan_I_ErrorCodeText as _KjanErrorCodeText
{
  key ERORR_CODE as ErorrCode,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _KjanErrorCodeAll,
  _KjanErrorCodeText
  
}
