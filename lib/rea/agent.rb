# Economic Agent is an individual or organization capable of having control
# over economic resources, and transferring or receiving the control to
# or from other individuals or organizations. Examples of economic agents
# are customers, vendors, employees, and enterprises. The enterprise is an
# economic agent from whose perspective we create the REA model.

module REA

  class Agent
    attr_accessor :id, :name

    def initialize args
      args.each do |k,v|
        instance_variable_set("@#{k}", v) unless v.nil?
      end
    end

  end

end
