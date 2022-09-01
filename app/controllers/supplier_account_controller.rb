class SupplierAccountController < ApplicationController
  def index
    @suppliers=Supplier.all
    @accounts=Account.all
  end
end
