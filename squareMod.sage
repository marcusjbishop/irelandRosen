def squareModP(p): # primes for which p is a residue/nonresidue
  assert is_prime(p) and 2!=p
  if 1==p%4:
    pr=[Mod(k,p) for k in [1..p-1] if legendre_symbol(k,p)==1]
  else:
    l=[k^2%p for k in [1,3..4*p-1] if 1==gcd(p,k)]
    l.extend([4*p-k for k in l])
    pr=[Mod(k,4*p) for k in uniq(l)]
  m=pr[0].modulus()
  pn=[Mod(k,m) for k in [1..m-1] if not k in pr and 0!=k%p and 1==gcd(k,m)]
  return pr,pn
