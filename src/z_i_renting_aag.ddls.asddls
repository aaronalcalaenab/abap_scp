@AbapCatalog.sqlViewName: 'ZV_RENTL_AAG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting_aag
  as select from z_b_cars_aag as Cars
  association [1]    to z_b_rem_days_aag as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to z_b_brands_aag   as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to Z_B_DET_CUSTOME  as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula

{
  key Matricula,
      Marca,
      Model,
      Color,
      Motor,
      Potencia,
      UndPotencia,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      AlqDesde,
      AlqHasta,


      ////    0 neutral grey
      ////    1 negative red
      ////    2 critical yellow
      ////    3 positive green
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
//      case
//      when _RemDays.Dias <= 0 then 'New'
//      when _RemDays.Dias between 1 and 30 then 'Error'
//      when _RemDays.Dias between 31 and 100 then 'In Progres'
//      when _RemDays.Dias > 100 then 'Delivered'
//      else 'New'
      '' as Estado,
      _DetCustomer
}
