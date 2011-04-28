class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => :index

  def index
    
  end

  def dashboard
    #TODO need to paginate these
    @customers = Customer.all
    @properties = Property.all
  end
end
