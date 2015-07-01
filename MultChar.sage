def X(p,i):
  assert is_prime(p)
  g=primitive_root(p)
  z=CyclotomicField(p-1).gen()
  l=range(p)
  if i%(p-1)==0:
    l[0]=1
  else:
    l[0]=0
  for j in [1..p-1]:
    l[g^j%p]=z^(i*j)
  return l 
