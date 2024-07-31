@AbapCatalog.sqlViewName: 'ZV_BRANDSL_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Marcas'
define view z_b_brands_aag
  as select from zrent_brands_aag
{
  key marca as Marca,
  @UI.hidden: true
      url   as Url
}
