@AbapCatalog.sqlViewName: 'ZV_CATEGO_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categoria'
define view z_b_catego_aag
  as select from ztb_catego_aag
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
