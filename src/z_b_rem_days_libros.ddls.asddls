@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_L'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaingi Libros'
define view z_b_rem_days_libros
  as select from ztb_libros_aag
{
  key id_libro as ID_Libro,
      bi_categ as Categoria,
      titulo as Titulo,
      precio   as Precio

}
