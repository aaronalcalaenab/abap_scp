@AbapCatalog.sqlViewName: 'ZV_LIBROS_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
define view z_b_libros_aag
  as select from ztb_libros_aag
{
  key id_libro  as IdLibro,
  key bi_categ  as BiCateg,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
