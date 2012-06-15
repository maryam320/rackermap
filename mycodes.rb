class Major
attr_accessor :core, :elective, :majorrelated, :clubs
end

class Year1< Major

	attr_accessor :volunteer_hours

	def initialize
		@core=18
		@elective=12
		@majorrelated=6
		@volunteer= 24

	end

	def y1total
		return @core+@elective+@majorrelated 

	end

	end


class Year2<Year1


	def initialize
 
		@core=12
		@elective=12
		@majorrelated=12
 	end 
	
	def y2total
		return @core+@elective+@majorrelated 

	end
	end

class Year3<Year1


	def initialize
 
		@core=7
		@elective=0
		@majorrelated=27
 	end
	
	def y3total
		return @core+@elective+@majorrelated 

	end 
	end

class Year4<Year1


	def initialize
 
		@core=9
		@elective=0
		@majorrelated=30
 	end 
	def y4total
		return @core+@elective+@majorrelated 

	end
	end





