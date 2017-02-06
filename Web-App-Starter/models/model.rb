def check_answer(add)
  sum=0
  add.each do |num|
    num=num.to_f
    sum+=num
  end
  sum
end
