require "rea_spec_helper"

describe "Economic Event" do

  let(:customer) { REA::Agent.new(:id => 'A01', :name => 'Customer') }
  let(:pizzeria) { REA::Agent.new(:id => 'A02', :name => 'Pizzeria') }
  let(:cash)     { REA::Resource.new(:id => 'R01', :name => 'Cash', :value => 10) }
  let(:pizza)    { REA::Resource.new(:id => 'R02', :name => 'Pepperoni Pizza Large', :value => 1)}


  context "Permanent Increment" do
    before(:each) do
      @increment_event = REA::Increment_Event.new(:provider => customer,
                                                  :receipient => pizzeria,
                                                  :resource_inflow => cash)

      @decrement_event = REA::Decrement_Event.new(:provider => pizzeria,
                                                  :receipient => customer,
                                                  :resource_outflow => pizza)

      @increment_event.decrement_events = []
      @increment_event.decrement_events << @decrement_event

    end

    it "creates a new instance" do
      @increment_event.should be_an_instance_of(REA::Increment_Event)
    end

    #it "is valid with a provider agent" do
      #@increment_event.provider.should be_an_instance_of(REA::Agent)
      #@increment_event.should have_attribute(:provider)
    #end

    it "is valid with an inflow (Economic Resource)"

    it "is invalid without an inflow (Economic Resource)"

    it "is invalid with more than one inflow (Economic Resources)"

    it "is invalid without a Provider (Economic Agent)"

    it "is invalid without a Receipient (Economic Agent)"

    it "is invalid without from_date"

    it "occurs in the past" do
      @increment_event.from_date = DateTime.parse('2011-01-01 08:00:00 UTC').to_time
      @increment_event.should be_valid
    end

    it "occurs in the present" do
      @increment_event.should be_valid
    end

    it "not occurs in the future" do
      @increment_event.from_date = DateTime.parse('2020-01-01 08:00:00 UTC').to_time
      @increment_event.should_not be_valid
    end

    it "is invalid if to_date is not in the future" do
      @increment_event.to_date = DateTime.parse('2011-01-01 08:00:00 UTC').to_time
      @increment_event.should_not be_valid
    end

    it "is invalid if it is not related to at least one decrement economic event" do
      @increment_event.decrement_events = []
      @increment_event.should_not be_valid
    end

  end

  context "Increment Event over a period of time" do
  end

  context "Decrement Event" do
  end

end
