# == Schema Information
#
# Table name: trips
#
#  id               :integer          not null, primary key
#  route_id         :integer          not null
#  start_time       :datetime
#  end_time         :datetime
#  distance_covered :decimal(, )
#  duration         :decimal(, )
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
