require File.join(File.dirname(__FILE__), '..', 'rea/increment_event')

module Domain

  class Cash_Receipt < REA::Increment_Event

    # TODO: Change type to a Decimal type to represent Money
    attribute :amount, :type => Integer, :default => 0

  end

end
