@AbapCatalog.sqlViewName: 'ZV_CARSL_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
define view z_b_cars_aag
  as select from zrent_cars_aag
{
  key matricula     as Matricula,
      marca         as Marca,
      model         as Model,
      color         as Color,
      motor         as Motor,
      potencia      as Potencia,
      und_potencia  as UndPotencia,
      combustible   as Combustible,
      consumo       as Consumo,
      fecha_fabrica as FechaFabricacion,
      puertas       as Puertas,
      precio        as Precio,
      moneda        as Moneda,
      alquilado     as Alquilado,
      alq_desde     as AlqDesde,
      alq_hasta     as AlqHasta
}
