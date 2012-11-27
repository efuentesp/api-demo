# Contract is a collection of increment and decrement commitments and
# terms. Under the conditions specified by the terms, a contract can create
# additional commitments. Thus, the contract can specify what should happen
# if the commitments are not fulfilled. For example, a sales order is a
# contract containing commitments to sell goods and to receive payments.
# The terms of the sales order contract can specify penalties (additional
# commitments) if the goods or payments have not been received as promised.

module REA

	class Contract
		attr_accessor :id, :increment_commitments, :decrement_commitments
	end

end