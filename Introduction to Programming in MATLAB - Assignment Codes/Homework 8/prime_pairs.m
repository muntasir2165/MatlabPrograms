function smallest_prime = prime_pairs(n)

all_primes = primes(100000);
primes_plus_n = all_primes + n;
prime_index = isprime(primes_plus_n);
prime = all_primes(prime_index);
if isempty(prime)
    smallest_prime = -1;
else
    smallest_prime = prime(1);
end