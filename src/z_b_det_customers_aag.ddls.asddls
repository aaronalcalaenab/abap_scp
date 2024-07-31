@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle Clientes'
@Metadata.allowExtensions: true
define view z_b_det_customers_aag
  as select from zrent_custo_aag
{
  key doc_id    as DocId,
  key matricula as Matricula,
      nombres   as Nombres,
      apellidos as Apellidos,
      email     as Email,
      cntr_type as CntrType
}
