# Commitment is a promise or obligation of economic agents to perform
# an economic event in the future. For example, line items on a sales order
# represent commitments to sell goods.

module REA

	class Decrement_Commitment
		attr_accessor :resource, :amount, :recipient, :fullfilled

		def initialize
			@fullfilled = false
		end

		def fulfill
			# :fullfilled = true
			# e = new increment_event self
			# Create an EventCreated handler
		end
	end

end