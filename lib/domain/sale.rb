require File.join(File.dirname(__FILE__), '..', 'rea/decrement_event')

module Domain

  class Sale < REA::Decrement_Event

    attribute :quantity, :type => Integer, :default => 1

  end

end
