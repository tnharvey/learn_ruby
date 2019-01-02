def ftoc fTemp
  if ((((fTemp-32)*(5.0/9))%1) == 0)
    ((fTemp-32)*(5.0/9))
  else
    ((fTemp-32)*(5.0/9)).round(2)
  end
end

def ctof cTemp
  if (((cTemp*(9.0/5)+32)%1)==0)
    return (cTemp*(9.0/5)+32)
  else
      (cTemp*(9.0/5)+32).round(2)
  end
end
