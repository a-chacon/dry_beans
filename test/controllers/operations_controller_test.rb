require 'test_helper'

class OperationsControllerTest < ActionDispatch::IntegrationTest
  test 'should create operation' do
    assert_difference('Operation.count') do
      post trip_operations_path(create(:trip)),
           params: { operation: { recipient_name: 'John Doe', sender_name: 'Jane Doe', address: '123 Main St', operation_time: DateTime.now,
                                  status: 'pending', operation_type: 'delivery' } }
    end
    assert_response :created
  end

  test 'should not create operation without recipient_name' do
    assert_no_difference('Operation.count') do
      post trip_operations_path(create(:trip)),
           params: { operation: { recipient_name: nil, sender_name: 'Jane Doe', address: '123 Main St', operation_time: DateTime.now,
                                  status: 'pending', operation_type: 'delivery' } }
    end
    assert_response :unprocessable_entity
  end
end
