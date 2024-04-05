# == Schema Information
#
# Table name: operations
#
#  id             :integer          not null, primary key
#  trip_id        :integer          not null
#  recipient_name :string
#  sender_name    :string
#  address        :string
#  operation_time :datetime
#  status         :string
#  operation_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class OperationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
