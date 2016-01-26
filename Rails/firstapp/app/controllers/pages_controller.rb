class PagesController < ApplicationController

	def hello
		@variable1=Time.current
		@numbers=[2,4,6,8,10]
		
	end
	
	def bye #there is also an associated view in views folder
	end
	
	#def sampleMethod(param2,param1)
end
