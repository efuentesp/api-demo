# Economic Event represents either an increment or a decrement in the
# value of economic resources that are under the control of the enterprise.
# Some economic events occur instantaneously, such as sales of goods; some
# occur over time, such as rentals, labor acquisition, and provision and use of
# services.

#require "active_attr"
require File.join(File.dirname(__FILE__), '.', 'economic_event')

module REA

  class Increment_Event < Economic_Event

    # TODO: Initialize with an empty array
    attr_accessor :decrement_events

    validate :is_related_to_at_least_one_decrement_event

    private

    def is_related_to_at_least_one_decrement_event
      if decrement_events.count == 0
        errors.add(:increment_event, "must be related to at least one decrement event that decreases the value of a resource.")
      end
    end

  end

end
