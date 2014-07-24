def clear
    puts("\n" * 50)
end

def good_mod_generator(x)
    for i in 999999999..x
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
    end
    return true
end

def modexp(e, x, m)
    tot = 1
    until e == 0
        if e % 2 == 1
            tot = (tot * x )% m
            tot = tot %m
        end
         x = (x*x) % m
         e = e / 2
    end
    return tot
end


def openrsa(m, e, pq)
    if m > pq
       puts"ISSUE"
       return -1
    end
    c = modexp(m, e, pq)
    return c
end

def clear
    puts("\n" * 50)
end

def authority(p, q, e)
    if gcd(e, ((p-1)*(q-1))) != 1
        puts("ISSUE")
        return -1
    end
 #   for einv in 2..((p-1) * (q -1))
   #     if ( e* einv) % ((p-1) * (q-1)) == 1
    #        return einv
     #   end
    #end
    #puts("didn't find inverse")
    #return -1
    return modinv(e, (p*q))
end

def ex_gcd(a, b)
    s = 0
    old_s = 1
    r = b
    old_r = a
    old_t = 0
    t = 1
    while r != 0
        quotient = old_r / r
        old_r, r = r, old_r - quotient * r
        old_s, s = s, old_s - quotient * s
        old_t, t = t, old_t - quotient * t
    end
    return old_s
end
def modinv(x, m)
     c = ex_gcd(x, m)
    return c
end
def gcd(a, b)
    s = 0
    old_s = 1
    r = b
    old_r = a
    old_t = 0
    t = 1
    while r != 0
        quotient = old_r / r
        old_r, r = r, old_r - quotient * r
        old_s, s = s, old_s - quotient * s
        old_t, t = t, old_t - quotient * t
    end
    return old_r
end

def generate_primes(x)
    nums = (0..x).to_a
    primes = []
    for i in 2..x
        if nums[i] != -1
        primes.push(i)
        n = 2*i
        end
        while n <= x
            nums[x] = -1
            x += i
        end
    end
end
