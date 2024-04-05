# == Schema Information
#
# Table name: operations
#
#  id             :integer          not null, primary key
#  trip_id        :integer          not null
#  recipient_name :string                                   ## Nombre de quien recibe.
#  sender_name    :string                                   ## Nombre de quien envia.
#  address        :string                                   ## Direccion de recogida o de entrega.
#  operation_time :datetime                                 ## Tiempo en que se ejecuto la operacion.
#  status         :string                                   ## Registro del estado de la operacion.
#  operation_type :string                                   ## Saber si es ENTREGA o RETIRO
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Operation < ApplicationRecord
  belongs_to :trip

  enum status: {
    pending: 'Pending',
    in_progress: 'In Progress',
    completed: 'Completed',
    cancelled: 'Cancelled'
  }

  enum operation_type: {
    delivery: 'Delivery',
    retrieval: 'Retrieval'
  }

  # I include this for make a model fail
  validates :recipient_name, presence: true
end
