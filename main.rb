class Converter
	def initialize
		@num = 0
		@result = ""
	end

	def to_binary( num )
		@num = num
		o = num % 2
		@num = (num / 2).to_i
		if o == 1
			@result << "1"
		else
			@result << "0"
		end	
		
		if @num < 1 
			return @result
		else
			to_binary(@num)
		end		
	end		
end

c = Converter.new
i = gets.to_i
puts c.to_binary(i).reverse
