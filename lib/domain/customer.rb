require File.join(File.dirname(__FILE__), '..', 'rea/agent')

module Domain

	class Customer < REA::Agent
		attr_accessor :address
	end

end