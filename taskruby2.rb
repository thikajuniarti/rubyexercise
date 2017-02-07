#print "Enter name : "
#a=gets
#print "Enter #{a.to_s} age :"
#b=gets
#print "Enter name : "
#c=gets
#print "Enter #{c.to_s} age :"
#d=gets
#puts "==================================="
#H = Hash["a" => "#{a.to_s}", "b" => "#{b.to_s}", "c" => "#{c.to_s}", "d" => "#{d.to_s}"]
#puts "Find me :"
#e=gets
#if a==e
#	print "#{H['a']} is a #{H['b']} years old"
#else
#	print "#{H['c']} is a #{H['d']} years old"
#end

#gunakan loopping
print "Enter count data will be entry : "
jml = gets.to_i

#cek number
cek = Integer(jml) rescue nil
while cek == 0
    print "Count data must be numeric"
    puts ""
    print "Enter count data will be entry : "
    jml = gets.to_i

    cek = Integer(jml) rescue nil
    break if cek > 0
end


i = 0

c = Array.new(jml, Hash.new)
num = 0

jml.times do |i|
  print "Enter name : "
  a=gets.to_s.chomp

  #cek string
  cek = Integer(a) rescue nil
  while cek != nil
      print "Name must consist of letters"
      puts ""
      print "Enter name : "
      a=gets.to_s.chomp

      cek = Integer(a) rescue nil
      break if cek == nil
  end

  #cek nama yang sama
  while c[num][a] != nil
      print "Name is already exist"
      puts ""
      print "Enter name : "
      a=gets.to_s.chomp
      break if c[num][a] == nil
  end
  print "Enter #{a.to_s} age :"
  b=gets.to_i

  c[num][a] = b

end

print "Find a name : "
d = gets.chomp

#cek ketersediaan data
while c[num][d] == nil
    print "Data not found"
    puts ""
    print "Find a name : "
    d = gets.chomp
    break if c[num][d] != nil
end
print "#{d} is a #{c[num][d]} years old"
puts ""
