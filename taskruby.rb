i = 0
num = 6

# while i < num  do
#    puts""
#    j = 6
#    numb = 0
#    while j > i do
#         print "*"
#         j -=1
#    end
#    i +=1
# end
# puts ""

#gunakan cara dibawah
num.times do |i|
  num.times do |i|
    print "*"
  end
  num -=1
  puts ""
end
puts ""
