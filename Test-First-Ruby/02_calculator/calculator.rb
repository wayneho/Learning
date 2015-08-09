def add a, b
	a+b
end

def subtract a, b
	a-b
end

def sum a
	sum = 0
	a.each do |i|
		sum += i
	end
	sum
end

def multiply a
	prod = 1
	if a.empty?
		return 0
	end

	a.each do |i|
		prod *= i
	end
	prod
end

def power(base,exp)
	ans = 1

	while(exp > 0) do
		ans*=base
		exp -= 1
	end
	ans
end

def factorial(a)
	ans = 1
	a.times do |i|
		ans *= i+1
	end
	ans
end 

