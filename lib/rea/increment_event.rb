# Economic Event represents either an increment or a decrement in the
# value of economic resources that are under the control of the enterprise.
# Some economic events occur instantaneously, such as sales of goods; some
# occur over time, such as rentals, labor acquisition, and provision and use of
# services.

module REA

	class Increment_Event
		attr_accessor :date, :resource, :amount, :provider

		def initialize(commitment)
			# date = DateTime.now
			# resource = commitment.resource
			# amount = commitment.amount
			# provider = commitment.provider
		end
	end

end