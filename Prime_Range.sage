# Prime Range, feat. Seive of Erat
lower = 1000000000000
upper = 1000000010000
number = ceil(sqrt(upper))
sieve = [1]*number
cur = 2
sieve[0] = 0
sieve[1] = 0
while cur <= number:
       pos = cur
       while 1 == 1:
              pos = pos + cur
              if pos >= number:
                     break
              if pos >= cur^2:
                     sieve[pos] = 0
       prev = cur
       for n in range(cur + 1, number):
              if sieve[n] == 1:
                     cur = n
                     break
       if prev == cur:
              break
primes = []
for n in range(number):
       if sieve[n] == 1:
              primes.append(n)

second_sieve = [1]*(upper-lower)
for n in range(len(second_sieve)):
       x = lower + n
       if second_sieve[n] == 1:
              comp = false
              for j in range(0, len(primes)):
                     q = primes[j]
                     if(x/q in ZZ):
                            second_sieve[n] = 0
                            cur = n
                            while cur < len(second_sieve):
                                   second_sieve[cur] = 0
                                   cur = cur + q
                            primes.remove(q)
                            break
more_primes = []
for n in range(len(second_sieve)):
       if second_sieve[n] == 1:
              more_primes.append(n + lower)

amount = len(more_primes)
print("We found this number of primes:")
print(amount)
print("These are the first ten primes:")
print(more_primes[0])
print(more_primes[1])
print(more_primes[2])
print(more_primes[3])
print(more_primes[4])
print(more_primes[5])
print(more_primes[6])
print(more_primes[7])
print(more_primes[8])
print(more_primes[9])
print("These are the last ten primes:")
print(more_primes[amount - 10])
print(more_primes[amount - 9])
print(more_primes[amount - 8])
print(more_primes[amount - 7])
print(more_primes[amount - 6])
print(more_primes[amount - 5])
print(more_primes[amount - 4])
print(more_primes[amount - 3])
print(more_primes[amount - 2])
print(more_primes[amount - 1])
