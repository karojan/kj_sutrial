@EndUserText.label: 'KJan error code Singleton - Maintain'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZKjan_C_ErrorCode_S
  provider contract transactional_query
  as projection on ZKjan_I_ErrorCode_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _KjanErrorCode : redirected to composition child ZKjan_C_ErrorCode
  
}
