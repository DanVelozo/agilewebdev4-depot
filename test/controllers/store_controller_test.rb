require 'test_helper'
# teste store_controller
class StoreControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'markup need for store.js.coffe is in place' do
    get :index
    assert_select '.store .entry > img', 3
    assert_select '.entry input[type=submit]', 3
  end
end
