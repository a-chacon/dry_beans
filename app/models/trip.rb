# == Schema Information
#
# Table name: trips
#
#  id               :integer          not null, primary key
#  route_id         :integer          not null
#  start_time       :datetime                                 ## A que hora comenzaron la ruta.
#  end_time         :datetime                                 ## A que hora completaron la ruta si es que termino.
#  distance_covered :decimal(, )                              ## Distancia cubierta. Deberia coincidir al total de la ruta cuando este completamente finalizada.
#  duration         :decimal(, )                              ## Cuanto tomo realmente la ruta.
#  status           :string                                   ## Un estado para mantener un registro.
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Trip < ApplicationRecord
  belongs_to :route
  has_many :operations

  enum status: {
    pending: 'Pending',
    in_progress: 'In Progress',
    completed: 'Completed',
    cancelled: 'Cancelled'
  }
end
