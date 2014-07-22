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
def good_mod_generator(x)
    for i in 1..x
        if isprime(i) == true
            puts i
        end
    end
end

def isprime(x)
    for i in 2..(x**(1.0/2.0))
        if x % i == 0
            return false
        end
    return true 
    end
end
def modexp(e, x, p)
    until e == 0
	    if e % w == 1
		    tot *=
end


def openrsa(m, e, pq)
    if m > pq
       puts"ISSUE"
       return -1   
    c = modexp(m, e, pq)
    return c
end

def clear
    puts("\n" * 50)
end

def authority(p, q, e)
    if gcd(e, ((p-1)*(q-1) != 1
        puts("ISSUE")
        return -1
    for einv in 2..((p-1) * (q -1))
        if ( e* einv) % ((p-1) * (q-1)) == 1
            return einv
    end
    puts("didn't find inverse")
    return -1
end

def she_loves_me?
    for flower_petals in 1..10
        if flower_petals % 2 == 0
            puts("She loves me")
        else
            puts("She loves me not")
        end
    end
end
