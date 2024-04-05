# == Schema Information
#
# Table name: routes
#
#  id             :integer          not null, primary key
#  name           :string                                   ## Alias o nombre para que sea facil de reconocer la ruta.
#  start_location :string                                   ## Punto de comienzo, podria ser una bodega si lo llevamos al caso de logistica.
#  end_location   :string                                   ## Punto de termino, podria ser el mismo lugar de partida u otro.
#  distance       :decimal(, )                              ## Distancia para saber el avanze cuando se este realizando.
#  duration       :decimal(, )                              ## Duracion de la ruta, para tener un estimado y contrastarlo con lo que realmente duro el viaje. Para saber si se realiza completamente en una misma jornada, etc.
#  description    :text                                     ## Mas detalles para los repartidores o quien este realizando la ruta.
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Route < ApplicationRecord
  has_many :trips
end
