class Vehicle
	attr_accessor :engine

	def initialize
		@engine =Engine.new
	end

	def start_engine
		@engine.start
	end

	def stop
		@engine.stop
	end

	def engine_status
		@engine.status
	end

	def go
		@engine.go
	end

	alias_method :stop_engine, :stop
end

class Engine
	attr_accessor :status

	def initialize
		@status = "not working"
	end
	
	def start
		@status = "working"
	end
	
	def go
		@status = "running"
	end
	
	def stop
		@status = "stopped"
	end
end

machine = Vehicle.new
puts machine.engine_status
machine.start_engine
puts machine.engine_status
machine.go
puts machine.engine_status
machine.stop_engine
puts machine.engine_status