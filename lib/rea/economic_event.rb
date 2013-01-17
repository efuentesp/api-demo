# Economic Event represents either an increment or a decrement in the
# value of economic resources that are under the control of the enterprise.
# Some economic events occur instantaneously, such as sales of goods; some
# occur over time, such as rentals, labor acquisition, and provision and use of
# services.

require "active_attr"

module REA

  class Economic_Event
    include ActiveAttr::Model

    attribute :from_date, :type => DateTime, :default => Date.today
    attribute :to_date, :type => DateTime

    validate :from_date_cannot_be_in_the_future,
             :to_date_must_be_in_the_future

    private

    def from_date_cannot_be_in_the_future
      if from_date > Date.today
        errors.add(:from_date, "can't be in the future.")
      end
    end

    def to_date_must_be_in_the_future
      if to_date and to_date <= Date.today
        errors.add(:to_date, "must be in the future.")
      end
    end

  end

end
