require 'domain_spec_helper'

module Domain

	describe Order do

	  it "should create a new Order" do
	  	customer = Customer.new
	  	pizza1 = Pizza.new
	  	order = Order.new
	  	ol1 = Order_Line.new
	  	ol1.amount = 100
	  	#ol1.resource = 
	  end

	end

end