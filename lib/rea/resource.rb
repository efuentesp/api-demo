# Economic Resource is a thing that is scarce, and has utility for economic
# agents, and is something users of business applications want to plan, monitor,
# and control. Examples of economic resources are products and services,
# money, raw materials, labor, tools, and services the enterprise uses.

module REA

  class Resource
    attr_accessor :id, :name, :value

    def initialize args
      args.each do |k,v|
        instance_variable_set("@#{k}", v) unless v.nil?
      end
    end

  end

end
