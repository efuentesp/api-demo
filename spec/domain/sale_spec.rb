require "domain_spec_helper"

describe "Sale Event" do

  let(:customer) { Domain::Customer.new(:id => 'A01', :name => 'John Doe') }
  let(:pizzeria) { Domain::Pizzeria.new(:id => 'A02', :name => 'Dominos') }
  let(:cash)     { Domain::Currency.new(:id => 'R01', :name => 'Cash') }
  let(:pizza1)   { Domain::Pizza.new(:id => 'R02', :name => 'Pepperoni Pizza Large') }
  let(:pizza2)   { Domain::Pizza.new(:id => 'R03', :name => 'Margarita Pizza Medium') }

  before (:each) do
    @sale_event1 = Domain::Sale.new(:provider => pizzeria,
                                    :receipient => customer,
                                    :resource_outflow => pizza1,
                                    :quantity => 1,
                                    :unit_price => 10)

    @sale_event2 = Domain::Sale.new(:provider => pizzeria,
                                    :receipient => customer,
                                    :resource_outflow => pizza2,
                                    :quantity => 2,
                                    :unit_price => 8)
    @sale_event1.increment_events = []
    @sale_event2.increment_events = []

    @cash_receipt_event = Domain::Cash_Receipt.new(:provider => customer,
                                                   :receipient => pizzeria,
                                                   :resource_inflow => cash,
                                                   :amount => 18)
    @cash_receipt_event.decrement_events = []

  end

  it "is invalid without exchange duality" do
    @sale_event1.should_not be_valid
  end

  it "is valid with increment events associated" do
    @sale_event1.increment_events << @cash_receipt_event
    @sale_event1.should be_valid
  end

end
