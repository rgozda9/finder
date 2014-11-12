class FinderController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def missing_email
  	@customers = Customer.all.where("email = ''")
  end
end
