def letter2number(string)
	array = [] # Start with empty array
	for i in string.bytes do # For each character
		array.push(i - 65) # Add the corresponding number to the end
# of the array
	end
	return array
end
def number2letter(array)
  string = "" # Start with empty string
  for i in array.each do # For each number
    string += (i+65).chr # Add the corresponding character to
# the end of the array
  end
return string
end

def ceaser_encipher(plaintxt)
	plainnum = letter2number(plaintxt)
	outnum = []
	for num, index in plainnum.each_with_index
	outnum[index] = (num + 3) % 26
	end
	outtxt = number2letter(outnum)
	return outtxt
end

def ceaser_decipher(plaintxt)
	plainum = letter2number(plaintxt)
	outnum = []
	for num, index in plainnum.each_with_index
	outnum[index] = (num - 3) % 26
	end
	outtxt = number2letter(outnum)

	return outtxt
end
def shift_encipher(plaintxt, key)
	plainum = letter2number(plaintxt)
	outnum = []
	for num, index in plainnum.each_with_index
	outnum[index] = (num + key) % 26
	end
	outtxt = number2letter(outnum)
	return outtxt
end
def shift_decipher(plaintxt, key)
	planinum = letter2number(plaintxt)
	outnum = []
	for num, index in plainnum.each_with_index
	outnum[index] = (num - key) % 26
	end
	outtxt = number2letter(outnum)
	return outtxt
end
## Can we alter the previous two to do a shift cipher?
def vigenere_encipher(string, keyword)
## Can we alter the previous to do vigenere cipher?
end
def affine_encipher(plaintxt, m, k)planinum = letter2number(plaintxt)
	outnum = []
	for num, index in plainnum.each_with_index
	outnum[index] = ((num * m )+ k ) % 26
	end
	outtxt = number2letter(outnum)
	return outtxt
end

## Can we alter the previous to do an affine cipher?
end
