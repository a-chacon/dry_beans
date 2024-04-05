FactoryBot.define do
  factory :trip do
    route
    start_time { Time.at(rand * Time.now.to_i) }
    end_time { Time.at(rand * Time.now.to_i) }
    distance_covered { rand * 100 }
    duration { rand * 100 }
    status { Trip.statuses.keys.sample }

    factory :trip_with_operations do
      # posts_count is declared as a transient attribute available in the
      # callback via the evaluator
      transient do
        operations_count { 10 }
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |trip, evaluator|
        create_list(:operation, evaluator.operations_count, trip:)

        # You may need to reload the record here, depending on your application
        trip.reload
      end
    end
  end
end
