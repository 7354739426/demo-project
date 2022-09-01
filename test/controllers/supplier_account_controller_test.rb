require 'test_helper'

class SupplierAccountControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplier_account_index_url
    assert_response :success
  end

end
