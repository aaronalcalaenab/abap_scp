@AbapCatalog.sqlViewName: 'ZV_DET_CLNT_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle Cliente'
@Metadata.allowExtensions: true
define view z_b_det_cliente_aag
  as select from ztb_clnts_lib_aa
{

key id_cliente as IdCliente,
key id_libro as IdLibro


}
