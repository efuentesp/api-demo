require File.join(File.dirname(__FILE__), '..', 'rea/contract')

module Domain

	class Order < REA::Contract

			def get_total
				total = 0
				# ...
			end

			def add_payment(customer, currency)
				# ...
			end
	end

end