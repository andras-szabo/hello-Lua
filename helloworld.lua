function hello()
	print("Hello, world!")
end

function threeFive()
	count = 1
	num = 15
	ret = { }
	cont = true
	while ( cont == true ) do
		if num % 3 == 0 then
			ret[count] = num
			count = count + 1
			if count == 101 then cont = false end
		end
		num = num + 5
	end
	return ret
end

function anagram(a, b)
	if string.len(a) ~= string.len(b) then return false end
	len = string.len(a)
	a = string.lower(a)
	b = string.lower(b)

	count = { }
	for i = 1, len do
		chr = string.sub(a,i,i)
		if count[chr] == nil then count[chr] = 0 end
		count[chr] = count[chr] + 1
	end

	for i = 1, len do
		chr = string.sub(b,i,i)
		if count[chr] == nil then return false end
		count[chr] = count[chr] - 1
	end

	for i = 1, len do
		if count[string.sub(a,i,i)] ~= 0 then return false end
	end
	return true
end

function removeLetter(word, letter)
	found = false
	place = 1
	i = 1
	while i <= string.len(word) do
		if string.sub(word,i,i) == letter then
			place = i
			found = true
			i = string.len(word)
		end
		i = i + 1
	end
	if found == false then return word end

	firstHalf = string.sub(word,1,place-1)
	secondHalf = string.sub(word,place+1,-1)

	return firstHalf .. secondHalf
end