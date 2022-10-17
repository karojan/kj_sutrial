@EndUserText.label: 'KJan error code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZKjan_I_ErrorCode_S
  as select from I_Language
    left outer join ZKJAN_E_C on 0 = 0
  composition [0..*] of ZKjan_I_ErrorCode as _KjanErrorCode
{
  key 1 as SingletonID,
  _KjanErrorCode,
  max( ZKJAN_E_C.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
