def add a,b
	a + b
end

def subtract a,b
	a - b
end

def sum arrayToSum
	#summed = (total, current) => total + current
	if (arrayToSum.length === 0)
		0
	else
		arrayToSum.reduce(:+)
	end
end

def multiply factors
	if (factors.length == 1)
		factors[0]
	else
		factors.reduce(:*)
	end
end

def power a,b
	a ** b
end

def factorial n
  if (n <= 0)
		1
	else
		n * factorial(n-1)
	end
end
