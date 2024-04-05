# == Schema Information
#
# Table name: routes
#
#  id             :integer          not null, primary key
#  name           :string
#  start_location :string
#  end_location   :string
#  distance       :decimal(, )
#  duration       :decimal(, )
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class RouteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
