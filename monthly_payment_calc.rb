puts
puts
i = true
# Input the loan amount.
while i do
	print "Enter the loan amount: ".rjust(27)
	p = gets.chomp.to_f
	if p <= 0
		print "!!!Loan amount must be greater than zero!!!\n"
	else 
		i = false
	end
end 

puts
i = true
# Input the number of years.
while i do
	print "Enter the number of years: "
	n = gets.chomp.to_i
	if n <= 0
		print "!!!Years must be greater than zero!!!\n"
	else
		i = false
	end
end

puts
i = true
# Input the intrest rate.
while i do
	print "Enter the intrest rate: ".rjust(27)
	r = gets.chomp.to_f
	if r <= 0
  print "!!!Intrest rate must be greater than zero!!!\n"
	else
		i = false
	end
end

# Compute the monthly payment 
monthly = (p * r / 1200.0) / (1 - (1.0 + r / 1200.0)**(-12 * n))

puts
puts
# Display the monthly payment
print "Your monthly payment is: ".rjust(27) + "$%.2f" % "#{monthly}" + "\n" 
puts
