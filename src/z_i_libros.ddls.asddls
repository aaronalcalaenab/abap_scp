@AbapCatalog.sqlViewName: 'ZV_LIBROS_AAGL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view z_i_libros as select from ztb_libros_aag as Libros
association [1] to z_b_rem_days_libros as _RemDays on Libros.id_libro = _RemDays.ID_Libro
association [0..*] to z_b_catego_aag as _Catego on Libros.bi_categ = _Catego.BiCateg
association [0..*] to z_b_det_cliente_aag as _DetCliente on Libros.id_libro = _DetCliente.IdLibro
{

    key id_libro as IdLibro,
    key bi_categ as BiCateg,
    titulo as Titulo,
    autor as Autor,
    editorial as Editorial,
    idioma as Idioma,
    paginas as Paginas,
    precio as Precio,
    moneda as Moneda,
    formato as Formato,
    url as Url,
    _Catego,
    _DetCliente
    
    
}
