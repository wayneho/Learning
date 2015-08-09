def measure(n=1)
	start = Time.now
	n.times do
		yield
	end
	finished = Time.now
	return (finished-start)/n
end