FactoryBot.define do
  factory :operation do
    trip
    recipient_name { Faker::Name.name }
    sender_name {  Faker::Name.name }
    address { Faker::Address.full_address }
    operation_time { Time.at(rand * Time.now.to_i) }
    status { Operation.statuses.keys.sample }
    operation_type { Operation.operation_types.keys.sample }
  end
end
