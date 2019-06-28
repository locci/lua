function fibs(n) 
  return n < 2 and n or fibs(n - 1) + fibs(n - 2) 
end

print(fibs(40))
