FactoryBot.define do
  factory :route do
    name { Faker::Name.name }
    start_location { Faker::Address.full_address }
    end_location { Faker::Address.full_address }
    distance { rand * 100 }
    duration { rand * 100 }
    description { Faker::Markdown.emphasis }

    factory :route_with_trips do
      # posts_count is declared as a transient attribute available in the
      # callback via the evaluator
      transient do
        trips_count { 5 }
        operations_count { 10 }
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |route, evaluator|
        create_list(:trip_with_operations, evaluator.trips_count, route:)

        # You may need to reload the record here, depending on your application
        route.reload
      end
    end
  end
end
