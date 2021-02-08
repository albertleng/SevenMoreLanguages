function concatenate(a1, a2)
  for i=1, #a2 do
    a1[#a1+i] = a2[i]
  end
  return a1
end